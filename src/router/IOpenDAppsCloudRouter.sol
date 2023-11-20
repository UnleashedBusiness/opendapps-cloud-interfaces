// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface IOpenDAppsCloudRouter {
    function referralsEngine() external returns (address);
    function contractDeployer() external returns (address);
    function decentralizedEntityDeployer() external returns (address);
    function tokenAsAServiceDeployer() external returns (address);
    function stakingAsAServiceDeployer() external returns (address);
    function assetBackingDeployer() external returns (address);
}