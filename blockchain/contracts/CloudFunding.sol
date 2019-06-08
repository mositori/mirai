pragma solidity ^0.5.8;
import "./SafeMath.sol";

contract CloudFunding {
	using SafeMath for uint;
    enum Stages {
        FirstStage,
        SecondStage,
        ThirdStage,
		Finished
    }
    
    enum ApplicantStages {
        Asked,
        NotAsked
    }

    struct Investor {
        uint amount;
        bool secondPay;
        bool thirdPay;
    }

    // CrowdFunding config
    Stages public stage;
    ApplicantStages public applicantStage;
    
    address payable public owner; //Applicant
    uint public numInvestors; 
    uint public goalAmount; 
    uint public amountRaised;
	uint public amountPaid;
    uint public primaryCheckPoint;
    uint public secondaryCheckPoint;
    mapping (address => Investor) public investors;
	mapping (uint => address payable) public helper;
    
    
    // Initialize
    constructor() public {
        owner = msg.sender;
        goalAmount = 10 ether;
        stage = Stages.FirstStage;
        applicantStage = ApplicantStages.NotAsked;
        primaryCheckPoint = 20; //percent
        secondaryCheckPoint = 60; //percent
    }
    
    // First Funding
	/** 
	* 出資
	*/
    function fund() public payable onlyStageAt(Stages.FirstStage){
        investors[msg.sender].amount = msg.value;
		numInvestors += 1;
		helper[numInvestors] = msg.sender;
        amountRaised += msg.value;
		emit Funded(msg.sender, msg.value, amountRaised);
    }
    
	/** 
	* 引き出し
	*/
    function firstWithdraw() public payable onlyOwner onlyStageAt(Stages.FirstStage){
        require(amountRaised >= goalAmount);
		uint _amount = amountRaised * primaryCheckPoint / 100;
        owner.transfer(_amount);
		amountPaid += _amount;
		emit Withdrawn(_amount);

        stage = Stages.SecondStage;
		emit StageChanged(stage);
    }
    
    function firstRequest() public onlyOwner onlyStageAt(Stages.SecondStage){
        applicantStage = ApplicantStages.Asked;
		emit ApplicantStageChanged(applicantStage);
    }
    
    function secondFund(bool _approve) public onlyStageAt(Stages.SecondStage) onlyAt(ApplicantStages.Asked){
		investors[msg.sender].secondPay = _approve;
    }

	function secondWithdraw() public payable onlyOwner onlyStageAt(Stages.SecondStage) onlyAt(ApplicantStages.Asked) {
		uint _amount;
		for(uint i = 1; i <= numInvestors; i++) {
			if(investors[helper[i]].secondPay) {
				_amount.add( investors[helper[i]].amount * (secondaryCheckPoint - primaryCheckPoint) / 100 );
			} else {
				helper[i].transfer(investors[helper[i]].amount * (100 - primaryCheckPoint) / 4);
			}
		}

		owner.transfer(_amount);
		emit Withdrawn(_amount);
		stage = Stages.ThirdStage;
		emit StageChanged(stage);
		applicantStage = ApplicantStages.NotAsked;
		emit ApplicantStageChanged(applicantStage);
	}

	function secondRequest() public onlyOwner onlyStageAt(Stages.ThirdStage){
		applicantStage = ApplicantStages.Asked;
		emit ApplicantStageChanged(applicantStage);
	}

	function thirdFund(bool _approve) public onlyStageAt(Stages.ThirdStage) onlyAt(ApplicantStages.Asked){
		investors[msg.sender].thirdPay = _approve;
    }

	function thirdWithdraw() public payable onlyOwner onlyStageAt(Stages.ThirdStage) onlyAt(ApplicantStages.Asked) {
		uint _amount;
		for(uint i = 1; i <= numInvestors; i++) {
			if(investors[helper[i]].thirdPay) {
				_amount.add( investors[helper[i]].amount * (100 - secondaryCheckPoint) / 100 );
			}
		}

		owner.transfer(_amount);
		emit Withdrawn(_amount);
		stage = Stages.Finished;
		emit StageChanged(stage);
		applicantStage = ApplicantStages.NotAsked;
		emit ApplicantStageChanged(applicantStage);
	}
    


	function config() public view returns(uint, uint){
		return (numInvestors, amountRaised);
	}





    // modifiers
    modifier onlyStageAt(Stages _stage) {
        require(stage == _stage);
        _;
    }

	modifier onlyAt(ApplicantStages _applicantStage) {
		require(applicantStage == _applicantStage);
		_;
	}
    
    modifier onlyOwner{
        require(owner == msg.sender);
        _;
    }




	//Events
	event Funded(address _from, uint _amount, uint _totalDeposit);
	event Withdrawn(uint _amount);
	event StageChanged(Stages _stage);
	event ApplicantStageChanged(ApplicantStages _applicantStage);
}