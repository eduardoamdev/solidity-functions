// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Functions {
    uint256[] numbersToSort = [7, 4, 9, 1, 2, 100, 12, 6, 4];
    uint256[] results;

    function sort() public payable returns (uint256[] memory) {
        for (uint256 i = 0; i < (numbersToSort.length - 1); i++) {
            for (uint256 j = 0; j < (numbersToSort.length - 1); j++) {
                if (numbersToSort[j] < numbersToSort[j + 1]) {
                    uint256 minorElement = numbersToSort[j];
                    numbersToSort[j] = numbersToSort[j + 1];
                    numbersToSort[j + 1] = minorElement;
                }
            }
        }
        return numbersToSort;
    }

    function mul(uint256 _num1, uint256 _num2) internal pure returns (uint256) {
        if (_num1 == 0) {
            return 0;
        } else if (_num2 == 0) {
            return 0;
        } else {
            uint256 result;
            result = _num1 * _num2;
            return result;
        }
    }

    function div(uint256 _num1, uint256 _num2) internal pure returns (uint256) {
        require(_num2 != 0);
        if (_num1 == 0) {
            return 0;
        } else {
            uint256 result;
            result = _num1 / _num2;
            uint256 divisional;
            divisional = _num1 % _num2;
            require(_num1 == ((result * _num2) + divisional));
            uint256 finalResult = result + (divisional / _num2);
            return finalResult;
        }
    }
}
