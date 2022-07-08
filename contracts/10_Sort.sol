//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Sort {
    function main1(uint256 amount) public pure returns (bool) {
        if (amount == 0) {
            return true;
        } else {
            return false;
        }
    }

    function main2() public pure returns (uint256) {
        uint256 number = 0;
        for (uint256 index = 0; index < 3; index++) {
            number += index;
        }
        return number;
    }

    function main3() public pure returns (uint256) {
        uint256 _number = 0;

        uint256 index = 0;
        while (index < 3) {
            _number += index;
            index++;
        }
        return _number;
    }

    function main4() public pure returns (uint256) {
        uint256 _number = 0;

        uint256 index = 0;
        do {
            _number += index;
            index++;
        } while (index < 3);
        return _number;
    }

    function main5(uint256 _number) public pure returns (bool) {
        return _number == 0 ? true : false;
    }
}
