// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Timelock {

    address payable public beneficiary;
    uint256 public releaseTime;

    constructor(address payable _beneficiary, uint256 _releaseTime) payable {
        require(_releaseTime > block.timestamp);
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }

    function release() public {
        require(block.timestamp >= releaseTime);
        beneficiary.transfer(address(this).balance);
    }
}

