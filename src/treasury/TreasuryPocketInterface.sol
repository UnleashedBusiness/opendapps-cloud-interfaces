// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TreasuryPocketInterface {
    function deployer() external view virtual returns (address);

    function owner() external view virtual returns (address);

    function available(address token) external view returns (uint256);

    function executeOperation(
        address operationAddress,
        address[] calldata inputTokens,
        uint256[] calldata inputAmounts,
        address[] calldata outputTokens,
        uint256[] calldata expectedOutputs
    ) external;

    function withdraw(address token, uint256 amount) external;
}
