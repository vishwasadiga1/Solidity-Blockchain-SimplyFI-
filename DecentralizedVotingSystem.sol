//Assignment 2: Decentralized Voting system 
pragma solidity ^0.8.0; 
contract DecentralizedVotingSystem{ 
uint256 constant registrationDeadline = 1753833599;    // 29 July 2025 23:59:59 UTC  
mapping(address => bool) public registeredVoters; 
mapping(address => bool) public hasVoted; 
mapping(address => bool) public blacklisted; 
mapping(address => string) public votesCast; 
mapping(string => uint256) public candidateVotes; 
address[] public voterList; 
address[] public blacklistedList; 
function register() external { 
require(block.timestamp <= registrationDeadline, "Registration is closed!"); 
require(!registeredVoters[msg.sender], "Voter already registered"); 
registeredVoters[msg.sender] = true; 
voterList.push(msg.sender); 
} 
function vote(string memory candidateName) external { 
require(registeredVoters[msg.sender], "Voter not registered"); 
require(!blacklisted[msg.sender], "Voter blacklisted"); 
if (hasVoted[msg.sender]) { 
string memory previousVote = votesCast[msg.sender]; 
if (bytes(previousVote).length > 0) { 
candidateVotes[previousVote] -= 1; 
} 
blacklisted[msg.sender] = true; 
blacklistedList.push(msg.sender);  
return; 
} 
votesCast[msg.sender] = candidateName; 
hasVoted[msg.sender] = true; 
candidateVotes[candidateName] += 1; 
} 
function getVotes(string memory candidateName) external view returns (uint256) { 
return candidateVotes[candidateName]; 
} 
function getBlacklistedVoters() external view returns (address[] memory) { 
return blacklistedList; 
} 
function getRegisteredVoters() external view returns (address[] memory) { 
return voterList; 
} 
}