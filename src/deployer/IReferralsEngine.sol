// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface IReferralsEngine {
    function getCompensationPercent(bytes32 refCode) external view returns(uint256 percent, address receiver);
    function calculateCompensationSize(bytes32 refCode, uint256 values) external view returns(uint256 compensationValue, uint256 remaining);
    function assignRefCodeToSelf(bytes32 refCode) external;
    function assignRefCodeToAddress(bytes32 refCode, address receiver) external;
    function assignRefCodeToAddressWithCustomSize(bytes32 refCode, address receiver, uint256 customSize) external;
    function disableRefCode(bytes32 refCode) external;
}
