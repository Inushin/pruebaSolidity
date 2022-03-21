// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ejemplo3 {

    address contrato = address(this);
    address payable contrato_p = payable(contrato);
    event transferido (address);

    function etherToContrato () public payable {
        contrato_p.transfer(msg.value);
        emit transferido(msg.sender);
    }

    function getSaldoContrato () public view returns(uint256) {
        return(contrato.balance);
    }

receive() external payable {

}
    /*

    function transferEntreCuentas (address payable addr) public payable {
        addr.transfer(msg.value);
    }

    function revisarBalance (address addr) public view returns (uint256) {
        uint256 balance = addr.balance;
        return (balance);
    }
    */
}