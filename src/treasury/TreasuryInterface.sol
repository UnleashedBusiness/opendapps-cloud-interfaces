// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TreasuryInterface {
    function getRewardTokens() external view returns(address[] memory);

    function available(address token) external view returns (uint256);
    function totalPendingPayment(address account, address token) external view returns (uint256);
    function claim(address token) external;

    function addRewardToken(address token) external;
    function removeRewardToken(address token) external;

    function addPayee(address account, uint256 shares) external;
    function changePayeeShare(address account, uint256 shares) external;
    function removePayee(address account) external;

    function getPayees() external view returns (address[] memory);
    function payeePercent(address account) external view returns (uint256);
    function getController() external view returns (address);

    function payeePocket(address account) external view returns(address);
    function balanceOf(address account, address token) external view returns (uint256);
}
