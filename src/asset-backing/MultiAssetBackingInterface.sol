// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface MultiAssetBackingInterface {
    function backingTokens() external view returns (address[] memory);
    function backedToken() external view returns (address);

    function backingAmount() external view returns (uint256[] memory);
    function smartBurnedAmount() external view returns (uint256);
    function backedTokenCirculatingSupply() external view returns (uint256);
    function floorPrice() external view returns (uint256[] memory);
    function flipFloorPrice() external view returns (uint256[] memory);

    function withdraw() external;
    function withdrawBurn() external;
    function lock(uint256 durationInBlocks) external;

    function flipBurn(uint256 minAmountOut, uint256[] memory amountsIn) payable external;
    function smartBurn(uint256[] memory minAmountsOut, uint256 amount) external;

    function enableRewardProvider(address provider) external;
}
