// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract GasOptimized {
    // Используем constant — значение жёстко зашито в байткод, не требует хранения в storage
    string public constant storedData = "Persistent storage data";

    // Используем calldata напрямую — дешёвый способ передачи строк
    function useCalldata(string calldata input) external pure returns (string calldata) {
        return input;
    }

    // Убираем проверки переполнения с помощью unchecked, если мы уверены, что переполнения быть не может
    function add(uint256 a, uint256 b) external pure returns (uint256 result) {
        unchecked {
            result = a + b;
        }
    }
}
