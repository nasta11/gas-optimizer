require("hardhat-gas-reporter");

require("@nomicfoundation/hardhat-toolbox");
require("hardhat-gas-reporter");

module.exports = {
  solidity: {
    version: "0.8.29",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  gasReporter: {
    enabled: true,
    currency: "USD", // можно поменять на "ETH"
    coinmarketcap: "", // опционально: вставь API ключ для реальных цен
    showTimeSpent: true,
  },
};

