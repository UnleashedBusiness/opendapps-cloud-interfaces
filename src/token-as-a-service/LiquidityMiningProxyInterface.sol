// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface LiquidityMiningProxyInterface {
    function allowedPairsForRouter(address router) external view returns(address[] memory);
    function toggleV2PairWhitelist(address router, address pairedAsset) external;

    function addLiquidity(address router, address pairedAsset, uint256 tokenAmount, uint256 pairedAssetAmount, uint256 expectedLPTokens) payable external;
    function removeLiquidity(address router, address pairedAsset, uint256 lpTokens, uint256 expectedTokenAmount, uint256 expectedPairedAssetAmount) external;
}
