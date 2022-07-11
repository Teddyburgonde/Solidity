pragma solidity 0.8.7; 

contract gestionproduit { 

    enum etape {commande, expedie, livre}

    struct produit { 
        uint _SKU;
        gestionproduit.etape _etape;
    }

    mapping(address => produit) CommandesClient;

    function commander(address _client, uint _SKU) public { 
        produit memory p = produit(_SKU, etape.commande);
        CommandesClient[_client] = p;
    }

    function expedier(address _client) public { 
        CommandesClient[_client]._etape = etape.expedie;
    }

    function getSKU(address _client) public view returns(uint) { 
        return CommandesClient[_client]._SKU;
    }

    function getEtape(address _client) public view returns(etape) { 
        return CommandesClient[_client]._etape;
    }
}