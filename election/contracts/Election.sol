pragma solidity ^0.5.8;

contract Election {
	// Modle a candidata
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store accounts that have voted
	mapping(address => bool) public voters;

	// Store candidate
	// Fetch candidate
	mapping(uint => Candidate) public candidates;

	// Count candidate
	uint public candidatesCount;


	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string memory _name) private {
		// Increase candidate count
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		// require that they havent voted before
		require(!voters[msg.sender]);

		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);
		
		// record that voter has voted
		voters[msg.sender] = true;

		// update candidate vote count
		candidates[_candidateId].voteCount ++;
	}
}

