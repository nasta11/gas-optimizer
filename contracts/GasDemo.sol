// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract GasDemo {
    string public storedData = "Persistent storage data"; // storage

    // memory — временное хранение данных внутри функции
    function useMemory(string memory input) public pure returns (string memory) {
        string memory local = input;
        return local;
    }

    // calldata — дешёвая область, доступна только для входных параметров external-функций
    function useCalldata(string calldata input) external pure returns (string calldata) {
        return input;
    }

    // stack — неявно используется при арифметике с примитивами
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
