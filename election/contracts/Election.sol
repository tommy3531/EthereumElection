pragma solidity ^0.5.8;

contract Election {
	// Modle a candidata
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

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
}

