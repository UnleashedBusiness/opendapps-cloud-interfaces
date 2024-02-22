// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TreasuryOperationInterface {
    function execute(
        address[] memory inputTokens,
        uint256[] memory inputAmounts,
        address[] memory outputTokens,
        uint256[] memory expectedOutputs
    ) payable external returns (uint256[] memory actualOutputs);
}
