// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface GovernanceSharesOwnershipInterface {
    function latestBalanceUpdate(address wallet, uint256 tokenId) external view returns (uint256);
}