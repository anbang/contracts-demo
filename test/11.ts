// import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Modifier");
    const greeter = await Greeter.deploy();
    // console.log("greeter=>", greeter);

    console.log("owner =>", await greeter.owner());
    console.log("main  =>", await greeter.main());
    console.log("owner =>", await greeter.owner());
  });
});
