// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface BaselineInsuranceDeployerInterface {
    function deploySimpleModel(address erc20Token, address backingToken, bytes32 refCode) payable external returns (address);
    function deployTanXModel(address erc20Token, address backingToken, bytes32 refCode) payable external returns (address);
}
