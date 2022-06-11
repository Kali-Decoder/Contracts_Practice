const VaultFactory = artifacts.require("VaultFactory");

module.exports = function (deployer) {
  deployer.deploy(VaultFactory);
};