// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface PresaleServiceDeployerInterface {
    function minBlocksForStart() external returns (uint256);
    function minBlocksDuration() external returns (uint256);

    function deploy(address token, address exchangeToken, bytes32 refCode) payable external returns (address);
    function upgrade(address presale) external;
}
