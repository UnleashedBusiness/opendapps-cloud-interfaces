// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TokenLiquidityTreasuryInterface {
    function claimableOwnerRewards() external view returns (uint256);
    function unclaimedOwnerRewards() external view returns (uint256);

    function getTokenDexListings() external view returns (address[] memory);
    function isTokenListedOnDex(address router) external view returns (bool);
    function getTokenDexListingPair(address weth, address router) external view returns (address);

    function claimOwnerRewards(uint256 amount) external;

    function addLiquidityV2(address router, address weth, uint256 tokenLiquidutyAmount, uint256 ethLiquidityAmount) external payable;
    function removeLiquidityV2(address router, address weth, uint256 liquidityAmount) external;
}
