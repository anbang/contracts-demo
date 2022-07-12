//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Event {
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 amount);

    function transfer(address _to, uint256 amount) public returns (uint256) {
        // owner = 0xCf89b31Ddde671e5ba6c0A93868DFEbFA1072434;
        balances[msg.sender] = 10000;
        balances[msg.sender] -= amount;
        balances[_to] += amount;
        emit Transfer(msg.sender, _to, amount);
        return balances[msg.sender];
    }
}
