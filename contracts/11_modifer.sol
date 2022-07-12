//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Modifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function main() public onlyOwner {
        owner = 0xCf89b31Ddde671e5ba6c0A93868DFEbFA1072434;
    }
}
