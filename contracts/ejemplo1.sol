// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ejemplo1 {

    string public primeraPalabra;
    uint256 public primerNumero;

    constructor(uint numero, string memory palabra) {
        primerNumero = numero;
        primeraPalabra = palabra;

    }

    function cambiaNumero (uint256 nuevoNumero) public {

        primerNumero = nuevoNumero;
    }

    function cambiaPalabra (string memory nuevaPalabra) public {
        primeraPalabra = nuevaPalabra;
    }

    function suma (uint256 a, uint256 b) public pure returns(uint256) {
        return(a+b);
    }
/*
    function obtenValor () public view returns(uint256, string memory) {
    return(primerNumero, primeraPalabra);
    }
*/
}