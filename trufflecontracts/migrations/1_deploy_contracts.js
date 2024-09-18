const Token = artifacts.require("Token");
const HackToken = artifacts.require("HackToken");

module.exports = async function(deployer) {
    await deployer.deploy(Token);
    const tokenAddress =Token.address;
    await deployer.deploy(HackToken, tokenAddress);
};