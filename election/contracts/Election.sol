pragma solidity ^0.5.8;

contract Election {
	// State variable
	string public candidate;

	// Constructor
	constructor() public {
		candidate = "Candidate 1";
	}
}