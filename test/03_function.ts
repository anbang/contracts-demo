import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Function");
    const greeter = await Greeter.deploy();

    const minusCall = await greeter.minusCall();
    console.log("newNumber=>", minusCall.toNumber());
    expect(minusCall.toNumber()).to.equal(4);

    const minusPayable = await greeter.minusPayable();
    console.log("minusPayable=>", minusPayable.value.toString());
    expect(minusPayable.value.toString()).to.equal("0");
  });
});
