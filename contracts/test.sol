pragma solidity 0.8.7;

contract test { 

    
    uint nombre;

    function getNombre() public view returns(uint) {
        return nombre;
     }

    function setNombre(uint _nombre) public { 
        nombre = _nombre;
    }
}