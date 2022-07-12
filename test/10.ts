// import { expect } from "chai";
import { ethers } from "hardhat";

describe("测试", function () {
  it("测试结果", async function () {
    const Greeter = await ethers.getContractFactory("Sort");
    const greeter = await Greeter.deploy();
    // console.log("greeter=>", greeter);

    // const data = await greeter.main(1);

    console.log("1=>", await greeter.main1(1));
    console.log("1=>", await greeter.main1(0));

    console.log("2=>", await greeter.main2());
    console.log("3=>", await greeter.main3());
    console.log("4=>", await greeter.main4());
    console.log("5=>", await greeter.main5(0));
    console.log("5=>", await greeter.main5(1));

    console.log(
      "insertionSortWrong=>",
      await greeter.insertionSortWrong([2, 5, 3, 1])
    );
  });
});
