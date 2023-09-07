//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
interface IPersonalVault {
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function lock(uint256 amount, uint256 blockCount) external;
    function extendLockTime(uint256 extraBlocksCount) external;
    function addToLockAmount(uint256 amount) external;

    function balance() external view returns (uint256);
    function unlockedBalance() external view returns (uint256);
    function lockedBalance() external view returns (uint256);
    function lockInProgress() external view returns (bool);
    function lockedUntilBlock() external view returns (uint256);
}
    