import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("ArrayTypes");
    const greeter = await Greeter.deploy();
    // console.log("greeter=>", greeter);

    const data = await greeter.main();

    // [
    //   BigNumber { value: "100" },
    //   BigNumber { value: "2" },
    //   BigNumber { value: "3" }
    // ]
    console.log("newNumber=>", data);
  });
});
