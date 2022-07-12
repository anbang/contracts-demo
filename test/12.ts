// import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Event");
    const greeter = await Greeter.deploy();
    // console.log("greeter=>", greeter);

    console.log(
      "transfer =>",
      await greeter.transfer("0xff3d7ee787cE86641264920Baadff8DaaB735A2a", 1)
    );
    console.log(
      "From =>",
      await greeter.balances("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266")
    );
    console.log(
      "To =>",
      await greeter.balances("0xff3d7ee787cE86641264920Baadff8DaaB735A2a")
    );
  });
});
