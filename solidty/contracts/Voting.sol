// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Voting{
    address public admin;

    constructor (){
        admin = msg.sender;
    }
    struct Candidate{
        string name;
        uint voteCount;
    }
    mapping (uint => Candidate) public candidates;
    uint public candidatesCount = 0;

    mapping (address => bool) public voters;

    modifier onlyAdmin(){
        require(msg.sender == admin, "Only admin can do this");
        _;
    }

    function addCandidate(string memory _name) public onlyAdmin{
        candidates[candidatesCount] = Candidate(_name, 0);
        candidatesCount++;
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender], "Already voted");
        require(_candidateId < candidatesCount, "Candidate does not exist");

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
    }

    function getWinner() public view returns (string memory winnerName, uint winnerVote){
        uint maxVote = 0;
        uint winnerId = 0;

        for(uint i = 0; i < candidatesCount; i++){
            if (candidates[i].voteCount > maxVote){
                maxVote = candidates[i].voteCount; 
                winnerId = i;
            }
        }
        winnerName = candidates[winnerId].name;
        winnerVote = candidates[winnerId].voteCount;
    }
}