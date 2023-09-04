// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface InflationInterface {
    function totalUnlocked() external view returns (uint256);
    function availableFor(address account) external view returns (uint256);
    function releaseFor(address account) external;
}
