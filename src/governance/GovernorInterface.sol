// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface GovernorInterface {
    function requireProposal() external view returns (bool);
    function executeMethodCalls(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, bytes32 descriptionHash) external payable returns (bytes[] memory);
}