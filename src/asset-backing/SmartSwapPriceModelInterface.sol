// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface SmartSwapPriceModelInterface {
    function quoteBurn(uint256 backingSize, uint256 smartBurnAmount, uint256 liquidity, uint256 totalSupply) external view returns (uint256);
    function quoteFlip(uint256 backingSize, uint256 smartBurnAmount, uint256 liquidity, uint256 totalSupply) external view returns (uint256);
}
