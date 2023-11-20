// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface AssetBackingInterface {
    function backingAmount() external view returns (uint256);
    function smartBurnedAmount() external view returns (uint256);
    function backedTokenCirculatingSupply() external view returns (uint256);
    function floorPrice() external view returns (uint256);
    function flipFloorPrice() external view returns (uint256);

    function setFlipMultiplier(uint256 multiplier) external;
    function withdraw() external;
    function withdrawBurn() external;
    function lock(uint256 durationInBlocks) external;

    function flipBurn(uint256 minAmountOut, uint256 amountIn) payable external;
    function smartBurn(uint256 minAmountOut, uint256 amount) external;

    function enableRewardProvider(address provider) external;
}
