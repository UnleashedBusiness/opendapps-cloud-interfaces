// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface TreasuryDeployerInterface {
    function operations() external view returns (address[] memory);

    function enableOperation(address operation) external;
    function disableOperation(address operation) external;
    function isValidOperation(address operation) external view returns(bool);

    function deploy() payable external returns (address);
    function upgrade(address treasury) payable external returns (address);

    function setPocketLibraryAddress(address _libraryAddress) external;
    function setTreasuryLibraryAddress(address _libraryAddress) external;
    function setDeployTax(uint256 taxSize) external;
}
