// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TokenAsAServiceDeployerInterface {
    struct TokenDeployment {
        address token;
        address tokenomics;
        address inflation;
        address treasury;
    }

    struct TokenDeploymentBaseInputs {
        string name;
        string ticker;
        uint256 supply;
        string metadataUrl;
    }

    struct TokenDeploymentInflationInputs {
        bool enabled;
        uint256 initialSupplyPercent;
        uint256 rewardRounds;
        uint256 blockPerCycle;
    }

    function minEthLiquidityAmount() external view returns (uint256);

    function ownerRewardsReleaseBlocks() external view returns (uint256);

    function ownerRewardCycles() external view returns (uint256);

    function ownershipNFTCollection() external view returns (address);

    function weth(address router) external view returns (address);

    function availableDexRouters() external view returns (address[] memory);

    function deployToken(
        TokenDeploymentBaseInputs calldata tokenBaseInputs,
        TokenDeploymentInflationInputs calldata tokenInflationInputs,
        bytes32 refCode
    ) payable external returns (TokenDeployment memory);

    function upgradeTokenomics(address tokenomics) payable external;

    function upgradeInflation(address inflation) payable external;
}
