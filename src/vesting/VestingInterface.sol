// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface VestingInterface {
    function totalRewards(address token) external view returns (uint256);
    function rewards(address token, address wallet) external view returns (uint256);

    function availableTotalRewards(address token) external view returns (uint256);
    function availableRewards(address token, address wallet) external view returns (uint256);

    function remainingTotalRewards(address token) external view returns (uint256);
    function remainingRewards(address token, address wallet) external view returns (uint256);

    function totalRewardsPerReleaseCycle(address token) external view returns (uint256);
    function rewardsPerReleaseCycle(address wallet, address token) external view returns (uint256);

    function totalReleaseCycles() external view returns (uint256);
    function releaseCycleBlockLength() external view returns (uint256);

    function lockHeight() external view returns (uint256);
    function finalReleaseHeight() external view returns (uint256);

    function rewardTokens() external view returns (address[]);
    function payees() external view returns (address[], uint256[]);
    function payeePercent(address wallet) external view returns (uint256);

    function withdraw(address token, uint256 amount) external;
    function claim(address token, uint256 amount) external;
    function begin(address[] calldata tokens, address[] calldata payees, uint256[] calldata payeePercents, uint256 rewardCycles, uint256 blocksPerCycle) external;
    function enableToken(address token) external;
}
