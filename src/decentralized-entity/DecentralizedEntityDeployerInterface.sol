// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DecentralizedEntityDeployerInterface {
    struct EntityDeployment {
        address entity;
        address treasury;
    }

    function deploySingleOwnerEntity(string calldata entityName, string calldata metadataUrl) external returns(EntityDeployment calldata);
    function deployMultiSignEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns(EntityDeployment calldata);
    function deployMultiSignSharesEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns (EntityDeployment calldata);
    function upgradeTreasury(address treasury) payable external;
}
