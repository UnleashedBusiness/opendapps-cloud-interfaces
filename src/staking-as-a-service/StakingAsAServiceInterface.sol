// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface StakingAsAServiceInterface {
    function stakingToken() external view returns(address);
    function availableRewards(address owner, address token) external view returns(uint256);

    function withdrawRewards(address token) external;
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function lock(uint256 rounds) external;
}