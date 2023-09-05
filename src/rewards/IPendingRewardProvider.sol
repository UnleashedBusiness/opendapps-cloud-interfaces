// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface IPendingRewardProvider {
    function getRewardTokens() external view returns(address[] memory);
    function getPendingRewards(address rewardToken, address receiver) external view returns(uint256);
    function withdrawTokenRewards(address rewardToken) external;
    function withdrawTokenRewardForReceiver(address rewardToken, address receiver) external;
}