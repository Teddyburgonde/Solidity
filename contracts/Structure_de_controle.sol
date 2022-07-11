pragma solidity 0.8.7;

contract structuredecontrole { 
    
   uint nombre; 

   function setNombre(uint _nombre) public { 
       require(_nombre != 10, 'Le nombre ne peut pas etre egal a 10');
       nombre = _nombre;
   }

   function getNombre() public view returns(uint) { 
       return nombre;
   }
}