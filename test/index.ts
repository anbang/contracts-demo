import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Function");
    const greeter = await Greeter.deploy();
    const newNumber = await greeter.minusCall();

    console.log("newNumber", await newNumber.wait());

    expect(newNumber.data).to.equal(4);
  });
});
