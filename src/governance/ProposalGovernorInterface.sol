// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.7;

import "./GovernorInterface.sol";

interface ProposalGovernorInterface is GovernorInterface {
    event ProposalCreated(
        uint256 indexed proposalId,
        address indexed proposer,
        address[] targets,
        uint256[] values,
        string[] signatures,
        bytes[] calldatas,
        uint256 startBlock,
        uint256 endBlock,
        string description
    );
    event ProposalExecuted(uint256 indexed proposalId, address executor);
    event VoteCast(address indexed voter, uint256 indexed proposalId);

    function proposalVoteStartBlock(uint256 proposalId) external view returns (uint256);
    function proposalVoteEndBlock(uint256 proposalId) external view returns (uint256);
    function proposalState(uint256 proposalId) external view returns (uint8);
    function buildProposalId(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, bytes32 descriptionHash) external view returns (uint256);
    function canVote(address wallet) external view returns (bool);
    function canPropose(address wallet) external view returns (bool);
    function hasVoted(uint256 proposalId, address account) external view virtual returns (bool);
    function makeProposal(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        string memory description
    ) external;
    function voteForProposal(uint256 proposalId) external;
}