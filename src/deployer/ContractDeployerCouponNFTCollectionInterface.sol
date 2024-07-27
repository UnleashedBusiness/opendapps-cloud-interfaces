// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface ContractDeployerCouponNFTCollectionInterface {
    function discountPercentScaled(address owner, bytes32 group) external view returns (uint256);
    function discountedTax(address owner, bytes32 group, uint256 taxSize) external view returns (uint256);
    function mint(address to, bytes32[] memory serviceGroupList, uint256[] memory discountsPercentScaled) external;
    function burn(uint256 tokenId) external;
}
