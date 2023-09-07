// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface StakingAsAServiceDeployerInterface {
    function deploy(address erc20Token, bytes32 refCode) payable external returns (address);
    function upgrade(address erc20Token) external;
}
