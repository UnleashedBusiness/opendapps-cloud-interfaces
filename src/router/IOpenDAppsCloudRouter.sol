// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface IOpenDAppsCloudRouter {
    function referralsEngine() external view returns (address);
    function contractDeployer() external view returns (address);
    function decentralizedEntityDeployer() view external returns (address);
    function tokenAsAServiceDeployer() external view returns (address);
    function stakingAsAServiceDeployer() external view returns (address);
    function assetBackingDeployer() external view returns (address);
    function presaleServiceDeployer() external view returns (address);
}