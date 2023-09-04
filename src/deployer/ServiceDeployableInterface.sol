// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface ServiceDeployableInterface {
    function canAccessFromDeployer(address walletOrContract) external view returns (bool);
}
