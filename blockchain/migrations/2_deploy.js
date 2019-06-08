const CrowdFunding = artifacts.require("CrowdFunding");
const SafeMath = artifacts.require("SafeMath");

module.exports = function(deployer) {
  deployer.deploy(SafeMath);
  deployer.deploy(CrowdFunding);
};
