const Token = artifacts.require("Token");
const HackToken = artifacts.require("HackToken");

module.exports = async function(deployer) {
    await deployer.deploy(Token);
    const tokenInstance = await Token.deployed();
    await deployer.deploy(HackToken, tokenInstance.address);
};