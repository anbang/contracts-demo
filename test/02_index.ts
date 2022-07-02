import { expect } from "chai";
import { ethers } from "hardhat";

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Hello");
    const greeter = await Greeter.deploy();
    expect(await greeter.hello()).to.equal("Hello");

    // 布尔值
    expect(await greeter._bool()).to.equal(true);
    expect(await greeter._bool1()).to.equal(false);
    expect(await greeter._bool2()).to.equal(false);
    expect(await greeter._bool3()).to.equal(true);
    expect(await greeter._bool4()).to.equal(false);
    expect(await greeter._bool5()).to.equal(true);

    // 整型
    expect(await greeter._int()).to.equal(-1);
    expect(await greeter._uint()).to.equal(1);
    expect(await greeter._number()).to.equal(20220330);
    expect(await greeter._number1()).to.equal(20220331);
    expect(await greeter._number2()).to.equal(4);
    expect(await greeter._number3()).to.equal(1);
    expect(await greeter._numberbool1()).to.equal(true);

    //
    expect(await greeter._byte32()).to.equal(
      "0x416e62616e670000000000000000000000000000000000000000000000000000"
    );
    expect(await greeter._byte1()).to.equal("0x6e");

    //
    expect(await greeter.enumToUint()).to.equal("0");
  });
});
