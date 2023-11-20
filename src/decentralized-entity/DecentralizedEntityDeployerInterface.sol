// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DecentralizedEntityDeployerInterface {
    struct EntityDeployment {
        address entity;
        address treasury;
    }

    function singleOwnerNFTOwnershipContract() external returns (address);
    function sharesEntityNftOwnershipContract() external returns (address);

    function deploySingleOwnerEntity(string calldata entityName, string calldata metadataUrl) external returns(EntityDeployment memory);
    function deployMultiSignEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns(EntityDeployment memory);
    function deployMultiSignSharesEntity(string calldata entityName, uint256 votingBlocksLength, string calldata metadataUrl) external returns (EntityDeployment memory);
    function upgradeTreasury(address treasury) payable external;
}
