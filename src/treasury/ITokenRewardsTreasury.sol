// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface ITokenRewardsTreasury {
    function getRewardTokens() external view returns(address[] memory);

    function getPayees() external view returns (address[] memory);
    function payeePercent(address account) external view returns (uint256);
    function getController() external view returns (address);

    function available(address token) external view returns (uint256);
    function totalPendingPayment(address account, address token) external view returns (uint256);
    
    function addRewardToken(address token) external;
    function removeRewardToken(address token) external;

    function addPayee(address account, uint256 shares) external;
    function changePayeeShare(address account, uint256 shares) external;
    function removePayee(address account) external;

    function release(address token) external;
}
