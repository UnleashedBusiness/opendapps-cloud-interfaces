// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TokenAsAServiceInterface {
    function burn(uint256 amount) external;
    function tokenomics() external view returns(address);
    function inflation() external view returns(address);
    function owner() external view returns(address);
    function metadataUrl() external view returns(string memory);
}