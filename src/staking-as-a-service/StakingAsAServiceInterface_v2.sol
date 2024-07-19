// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

import {StakingAsAServiceInterface} from "./StakingAsAServiceInterface.sol";

interface StakingAsAServiceInterface_v2 is StakingAsAServiceInterface {
    function totalVaultShares() external view returns (uint256);
    function totalTaxationPercent() external view returns (uint256);
    function rewardsPoolAddress() external view returns (address);
    function taxation() external view returns (address[] memory, uint256[] memory);

    function hasVault(address user, bytes32 hash) external view returns (bool);
    function vaultOf(address user, bytes32 hash) external view returns (address);
    function balanceOf(address account, bytes32 hash) external view returns (uint256);
    function unlockedBalanceOf(address account, bytes32 hash) external view returns (uint256);
    function lockedBalanceOf(address account, bytes32 hash) external view returns (uint256);
    function lockedUntilBlock(address account, bytes32 hash) external view returns (uint256);
    function currentSharesMultiplier(address account, bytes32 hash) external view returns (uint256);
    function availableRewards(address account, bytes32 hash, address token) external view returns (uint256);

    function epochCanBeRaised() external view returns (bool);
    function currentEpoch() external view returns (uint256);
    function totalAvailableRewards() external view returns (uint256);
    function rewardTokens() external view returns (address[] memory);

    function createVault(bytes32 hash) external;
    function deposit(bytes32 hash, uint256 amount) external;
    function withdraw(bytes32 hash, uint256 amount) external;
    function lock(bytes32 hash, uint256 rounds) external;
    function withdrawRewards(bytes32 hash, address token) external;

    function raiseEpoch() external;
}