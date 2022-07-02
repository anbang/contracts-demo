//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract Return {
    // function main()
    //     public
    //     pure
    //     returns (
    //         uint256,
    //         bool,
    //         uint256[3] memory
    //     )
    // {
    //     return (1, false, [uint256(1), 3, 4]);
    // }

    function main()
        public
        pure
        returns (
            uint256 _number,
            bool _bool,
            uint256[3] memory _array
        )
    {
        _number = 1;
        _bool = false;
        _array = [uint256(1), 3, 4];
    }

    // e
}
