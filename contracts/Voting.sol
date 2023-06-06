// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21 <0.9.0;


contract Election {
    address public admin;
    uint256 candidateCount;
    uint256 voterCount;
    bool start;
    bool end;
    

    struct Candidate {
        uint256 candidateId;
        string header;
        string slogan;
        uint256 voteCount;
    }
    
    mapping(uint256 => Candidate) public candidateDetails;



    modifier onlyAdmin() {
        // Modifier for only admin access
        require(msg.sender == admin);
        _;
    }
    
    
    constructor() public {
        // Initilizing default values
        admin = msg.sender;
        candidateCount = 0;
        voterCount = 0;
        start = false;
        end = false;
    }

    function getAdmin() public view returns (address) {
        // Returns account address used to deploy contract (i.e. admin)
        return admin;
    }

         function getTotalCandidate() public view returns (uint256) {
        // Returns total number of candidates
        return candidateCount;
    }
      


}