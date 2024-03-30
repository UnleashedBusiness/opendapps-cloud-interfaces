// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface VestingDeployerInterface {
    function deploy(bytes32 refCode) payable external returns (address);
    function upgrade(address vesting) payable external returns (address);

    function setVestingLibraryAddress(address _libraryAddress) external;
    function setDeployTax(uint256 taxSize) external;
}
