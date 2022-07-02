//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Function {
    uint256 public number = 5;

    // internal: 内部
    function minus() internal view returns (uint256 new_number) {
        console.log("Start", number);
        new_number = number - 1;
        console.log("End  ", new_number);
    }

    // 合约内的函数可以调用内部函数
    function minusCall() external view returns (uint256 new_number) {
        new_number = minus();
        console.log("new_number", new_number);
        // return new_number;
    }

    // payable: 递钱，能给合约支付eth的函数
    function minusPayable() external payable returns (uint256 balance) {
        minus();
        balance = address(this).balance;
        console.log("balance", balance);
    }

    // e
}
