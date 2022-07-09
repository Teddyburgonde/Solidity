pragma solidity 0.8.7;

contract test3 { 
    mapping(address => uint) balances;

    function getBalance() public view returns(uint) { 
        return Balances[_monAdresse];
    }

    receive() external payable { 
        //msg.value 
        //msg.sender 
        Balance[msg.sender] = msg.value;
    }
}
