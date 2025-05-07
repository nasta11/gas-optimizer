const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("GasOptimized", function () {
  let contract;

  beforeEach(async function () {
    const ContractFactory = await ethers.getContractFactory("GasOptimized");
    contract = await ContractFactory.deploy();
    await contract.deployed();
  });

  it("should return stored constant string", async function () {
    const value = await contract.storedData();
    expect(value).to.equal("Persistent storage data");
  });

  it("should return the same calldata input", async function () {
    const input = "hello world";
    const result = await contract.useCalldata(input);
    expect(result).to.equal(input);
  });

  it("should correctly add two numbers", async function () {
    const result = await contract.add(5, 7);
    expect(result).to.equal(12);
  });
});
