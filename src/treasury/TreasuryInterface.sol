// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TreasuryInterface {
    function getRewardTokens() external view returns(address[] memory);

    function available(address token) external view returns (uint256);
    function totalPendingPayment(address account, address token) external view returns (uint256);
    function totalPendingPaymentExtended(address account, address token, uint256 index) external view returns (uint256);
    function claim(address token) external;

    function addRewardToken(address token) external;
    function removeRewardToken(address token) external;

    function addPayee(address account, uint256 shares) external;
    function addPayeeExtended(address account, uint256 pocketIndex, uint256 shares) external;
    function changePayeeShare(address account, uint256 shares) external;
    function changePayeeShareExtended(address account, uint256 pocketIndex, uint256 shares) external;
    function removePayee(address account) external;
    function removePayeeExtended(address account, uint256 pocketIndex) external;

    function getPayees() external view returns (address[] memory);
    function payeePercent(address account) external view returns (uint256);
    function payeePercentExtended(address account, uint256 index) external view returns (uint256);
    function getController() external view returns (address);

    function createPocket(bytes32 name) external;

    function payeePocket(address account) external view returns(address);
    function payeePocketExtended(address account, uint256 index) external view returns (address);
    function balanceOf(address account, address token) external view returns (uint256);
    function balanceOfExtended(address account, uint256 index, address token) external view returns (uint256);
}
