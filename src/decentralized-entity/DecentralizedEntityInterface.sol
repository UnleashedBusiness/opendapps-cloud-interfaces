// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DecentralizedEntityInterface {
    function name() external view returns (string memory);
    function memberOf(address wallet) external view returns (bool);
    function metadataUrl() external view returns (string memory);
}