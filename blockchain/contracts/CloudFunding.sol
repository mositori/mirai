pragma solidity ^0.5.8;
import "./SafeMath.sol";

contract core {
	using SafeMath for uint256;
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
	mapping (uint => address) public helper;
    
    
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
    function fund() public payable onlyStageAt(Stages.FirstStage){
        investors[msg.sender].amount = msg.value;
		numInvestors.add(1);
		helper[numInvestors] = msg.sender;
        amountRaised.add(msg.value);
    }
    
    function firstEarn() public payable onlyOwner onlyStageAt(Stages.FirstStage){
        require(amountRaised >= goalAmount);
        owner.transfer(amountRaised * primaryCheckPoint / 100);
		amountPaid.add(amountRaised * primaryCheckPoint / 100);
        stage = Stages.SecondStage;
    }
    
    function firstRequest() public onlyOwner onlyStageAt(Stages.SecondStage){
        applicantStage = ApplicantStages.Asked;
    }
    
    function secondFund(bool _approve) public onlyStageAt(Stages.SecondStage) onlyAt(ApplicantStages.Asked){
		investors[msg.sender].secondPay = _approve;
    }

	function secondEarn() public payable onlyOwner onlyStageAt(Stages.SecondStage) onlyAt(ApplicantStages.Asked) {
		uint _amount;
		for(uint i = 1; i <= numInvestors; i++) {
			if(investors[helper[i]].secondPay) {
				_amount.add( investors[helper[i]].amount * (secondaryCheckPoint - primaryCheckPoint) / 100 );
			}
		}

		owner.transfer(_amount);
		stage = Stages.ThirdStage;
		applicantStage = ApplicantStages.NotAsked;
	}

	function secondRequest() public onlyOwner onlyStageAt(Stages.ThirdStage){
		applicantStage = ApplicantStages.Asked;
	}

	function thirdFund(bool _approve) public onlyStageAt(Stages.ThirdStage) onlyAt(ApplicantStages.Asked){
		investors[msg.sender].thirdPay = _approve;
    }

	function thirdEarn() public payable onlyOwner onlyStageAt(Stages.ThirdStage) onlyAt(ApplicantStages.Asked) {
		uint _amount;
		for(uint i = 1; i <= numInvestors; i++) {
			if(investors[helper[i]].thirdPay) {
				_amount.add( investors[helper[i]].amount * (1 - secondaryCheckPoint) / 100 );
			}
		}

		owner.transfer(_amount);
		stage = Stages.Finished;
		applicantStage = ApplicantStages.NotAsked;
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
}