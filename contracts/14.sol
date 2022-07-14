//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Yeye {
    event Log(string msg);

    function hip() public virtual {
        emit Log("Yeye");
    }

    function pop() public virtual {
        emit Log("Yeye");
    }

    function yeye() public virtual {
        emit Log("Yeye");
    }
}

contract Baba is Yeye {
    function hip() public virtual override {
        emit Log("Baba");
        super.hip();
        Yeye.hip();
    }

    function pop() public virtual override {
        emit Log("Baba");
    }

    function baba() public virtual {
        emit Log("Baba");
    }
}

contract Erzi is Yeye, Baba {
    function hip() public override(Yeye, Baba) {
        emit Log("Erzi");
    }

    function pop() public override(Yeye, Baba) {
        emit Log("Erzi");
    }

    function erzi() public virtual {
        emit Log("Erzi");
    }
}

//  修饰器继承

contract Main1 {
    modifier mainModifier(uint256 _a) virtual {
        require(_a % 2 == 0 && _a % 3 == 0);
        _;
    }
}

contract Main2 is Main1 {
    function main(uint256 _dividend)
        public
        pure
        mainModifier(_dividend)
        returns (uint256, uint256)
    {
        return handler(_dividend);
    }

    function handler(uint256 _dividend) public pure returns (uint256, uint256) {
        uint256 div2 = _dividend / 2;
        uint256 div3 = _dividend / 3;
        return (div2, div3);
    }

    modifier mainModifier(uint256 _a) override {
        require(_a % 2 == 0);
        _;
    }
}
