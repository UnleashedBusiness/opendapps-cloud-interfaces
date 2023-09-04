// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface SecondaryServiceDeployableInterface {
    function masterDeployable() external view returns (address);
}
