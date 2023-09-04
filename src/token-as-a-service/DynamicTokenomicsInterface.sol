// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DynamicTokenomicsInterface {
    function availableTaxableConfigurations() view external returns (uint256);
    function totalTax(address from, address to) view external returns (uint256);

    function isTransactionValid(address from, address to, uint256 transferAmount) view external returns (bool);
    function applyTokenomics(address from, address to, uint256 taxAmount) external;

    function addToTransactionRestrictionWhitelist(address wallet) external;
    function addToWalletSizeWhitelist(address wallet) external;
    function addToRouterAddressList(address wallet, address weth) external;
    function addToTaxablePathWhitelist(address wallet) external;

    function createTaxableConfig() external;
    function addTaxForPath(address from, address to, uint256 i) external;
}