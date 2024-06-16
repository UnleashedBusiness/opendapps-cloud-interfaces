// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import {IPendingRewardProvider} from "../rewards/IPendingRewardProvider.sol";

interface DistributorInterface_v1 is IPendingRewardProvider {
    function getInputs() external view returns (address[] memory);
    function getOutputs() external view returns (address[] memory);
    function getPayees() external view returns (address[] memory);
    function getPayeeOutputPercents(address payee) external view returns (address[] memory outputs, uint256[] memory percents);

    function nextPendingSwap(address input) external view returns (address output, uint256 amount, uint256 expectedAmount);

    function prepareDistribution() external;
    function executePendingSwap(address swapInput, address swapOutput, uint256 expectedOutput) external;
    function distribute() external;
}
