// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

interface DeployableTemplateInterface {
    function deploy() external returns (address);
}
