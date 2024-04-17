// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface PresaleServiceInterface  {
    function purchaseToken() external returns (address);
    function token() external returns (address);
    function startBlock() external returns (uint256);
    function endBlock() external returns (uint256);
    function softCap() external returns (uint256);
    function hardCap() external returns (uint256);
    function currentCap() external returns (uint256);
    function exchangeRate() external returns (uint256);
    function minPerWallet() external returns (uint256);
    function maxPerWallet() external returns (uint256);

    function isRunning() external view returns (bool);
    function ended() external view returns (bool);

    function reachedSoftCap() external view returns (bool);

    function pendingPayment(address wallet) external view returns (uint256);
    function pendingTokens(address wallet) external view returns (uint256);

    function schedule(uint256 _startingBlock, uint256 _endBlock, uint256 _softCap, uint256 _hardCap,
        uint256 _minPerWallet, uint256 _maxPerWallet, uint256 _exchangeRate) external;

    function buy(uint256 amount) external payable;
    function claim() external;
    function withdraw() external;
    function claimFunding() external;
}