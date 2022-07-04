//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Mapping {
    mapping(address => uint256) public balances;

    function main(address account, uint256 amount)
        public
        returns (uint256 _balance)
    {
        balances[account] = amount;
        // console.log("balance", balance);
        _balance = balances[account];
        return _balance;
    }
}
