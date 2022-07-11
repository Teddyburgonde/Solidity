pragma solidity 0.8.7;

contract learnarray { 

    uint[] nombre;

    function addValue(uint _valeur) public { 
        nombre.push(_valeur);
    }

    function updateValue(uint _index, uint _valeur) public { 
        nombre[_index] = _valeur;
    }

    function deleteValue(uint _index) public { 
        delete nombre[_index];
    }

    function getValue(uint _index) public view returns(uint) { 
        return nombre[_index];
    }

        function getNombreX2() public view returns(uint[] memory) {
        uint longeur = nombre.length; 
        uint[] memory nombreX2 = new uint[](longeur);
        for( uint i = 0; i < longeur; i++) { 
            nombreX2[i] = nombre[i] * 2;
        }
        return nombreX2;
    }

}