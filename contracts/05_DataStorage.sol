//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract DataStorage {
    uint256[] x = [1, 2, 3]; // 状态变量：数组 x

    // function main(uint256[] calldata _x) public returns (uint256[] memory) {
    //     //参数为calldata数组，不能被修改
    //     _x[0] = 0; //这样修改会报错
    //     return (_x);
    // }

    // function main() public view returns (uint256[] memory, uint256[] memory) {
    //     //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
    //     uint256[] memory xMemory = x;
    //     xMemory[0] = 100;
    //     return (x, xMemory);
    // }
}
