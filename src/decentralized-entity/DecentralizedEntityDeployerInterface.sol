// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DecentralizedEntityDeployerInterface {
    function deploySingleOwnerEntity(string calldata entityName, string calldata metadataUrl) external returns(address);
    function deployMultiSignEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns(address);
    function deployMultiSignSharesEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns (address);
    function upgradeTreasury() payable external;
}
