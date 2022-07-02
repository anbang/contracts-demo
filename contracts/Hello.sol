//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Hello {
    string public hello = "Hello";

    // 布尔值
    bool public _bool = true;

    // 布尔运算
    bool public _bool1 = !_bool; //false
    bool public _bool2 = _bool && _bool1; // false
    bool public _bool3 = _bool || _bool1; // true
    bool public _bool4 = _bool == _bool1; // false
    bool public _bool5 = _bool != _bool1; // true

    // 整型
    int256 public _int = -1; // 整数，包括负数
    uint256 public _uint = 1; // 正整数
    uint256 public _number = 20220330; // 256位正整数
    // 整数运算
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2**2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool1 = _number2 > _number3; // 比大小

    //
    bytes32 public _byte32 = "Anbang";
    bytes1 public _byte1 = _byte32[1];
    // console.log("_byte32:", _byte32);
    // console.log("_byte1:", _byte1);

    // emun
    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet action = ActionSet.Buy;

    // enum可以和uint显式的转换
    function enumToUint() external view returns (uint256) {
        return uint256(action);
    }

    // e
}
