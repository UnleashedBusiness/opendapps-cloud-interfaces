// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TokenTreasuryInterface {
    function isTokenListedOnDex(address router) external view returns (bool);
    function addLiquidityV2(address router, address weth, uint256 tokenLiquidutyAmount, uint256 ethLiquidityAmount) external payable;
}
