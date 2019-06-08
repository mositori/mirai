const CloudFunding = artifacts.require("CloudFunding");
const SafeMath = artifacts.require("SafeMath");

module.exports = function(deployer) {
  deployer.deploy(SafeMath);
  deployer.deploy(CloudFunding);
};
