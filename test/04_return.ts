import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Return");
    const greeter = await Greeter.deploy();

    const [_number, _bool, _array] = await greeter.main();
    console.log("newNumber=>", _number, _bool, _array);
    expect(_number.toNumber()).to.equal(1);
    expect(_bool).to.equal(false);
  });
});
