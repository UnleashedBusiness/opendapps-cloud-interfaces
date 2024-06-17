// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface DistributorDeployerInterface_v1 {
    function deploy(bytes32 refCode) payable external returns (address);
    function upgrade(address distributor) payable external returns (address);
}
