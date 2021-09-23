const Yieldagg = artifacts.require("Yieldagg");

module.exports = function (deployer) {
  deployer.deploy(Yieldagg);
};