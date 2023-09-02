// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface IContractDeployerInterface {
    function currentTemplate(bytes32 groupHash, uint8 typeNumber) external view returns (address);
    function deployTaxForAddress(address deployer, bytes32 groupHash, uint8 typeNumber) external view returns (uint256);

    function registerTemplate(
        bytes32 groupHash, uint8 typeNumber,
        bytes4[] memory expectedInterfaceId,
        address libraryAddress,
        uint256 deployTax
    ) external;

    function upgradeTemplate(
        bytes32 groupHash, uint8 typeNumber, address libraryAddress
    ) external;

    function upgradeContractWithProxy(
        bytes32 groupHash, address _contract
    ) external;

    function deployTemplate(
        address owner, bytes32 groupHash, uint8 typeNumber, bytes memory initializeData, bytes32 refCode
    ) external payable returns (address);

    function deployTemplateWithProxy(
        address owner, bytes32 groupHash, uint8 typeNumber, bytes memory initializeData, bytes32 refCode
    ) external payable returns (address);

    function upgradeDeployTax(
        bytes32 groupHash, uint8 typeNumber, uint256 deployTax
    ) external;
}
