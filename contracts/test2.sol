pragma solidity 0.8.7;

contract test2 { 

    string maPhrase;

    function getPhrase() public view returns(string memory) { 
        return maPhrase;
    }

    function setPhrase(string memory _maPhrase) public { 
        maPhrase = _maPhrase;
    }
}
