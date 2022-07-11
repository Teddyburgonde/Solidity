pragma solidity 0.8.7;

contract envoyerether { 

    struct balance { 
        uint money;
        uint numPayments;
    }

    mapping(address => balance) Balances;

    function getBalance() public view returns(uint) { 
        return Balances[msg.sender].money;
    }

    function getNumPayments() public view returns(uint) { 
        return Balances[msg.sender].numPayments;
    }

    receive() external payable { 
        Balances[msg.sender].money += msg.value;
        Balances[msg.sender].numPayments += 1;
    }
}


