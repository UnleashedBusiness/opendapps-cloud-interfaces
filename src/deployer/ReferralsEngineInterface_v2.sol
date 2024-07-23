// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IReferralsEngine} from "./IReferralsEngine.sol";

interface ReferralsEngineInterface_v2 is IReferralsEngine {
    function canUseRefCode(bytes32 refCode, address user) external view returns (bool);
    function getTaxationReceivers(bytes32 refCode, address sender) external view returns (uint256[] memory percents, address[] memory receiversArray);

    function toggleAddressToRefCodeWhitelist(bytes32 refCode, address user) external;
    function toggleRefCodeWhiteListMode(bytes32 refCode, address user) external;

    function setDefaultReceiver(address target) external;
    function assignExtendedRefCode(bytes32 refCode, address[] memory receiver, uint256[] memory customSizes) external;
}
