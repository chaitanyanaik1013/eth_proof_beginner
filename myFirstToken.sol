// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract myFirstToken {

    string public tokenName = "Chaitanya Naik";
    string public tokenAbbr = "CN";
    uint public totalSupply = 0;

    mapping(address => uint) public tokenBalance;

    function mint(address _address, uint _value) public{
        totalSupply += _value;
        tokenBalance[_address] += _value;
    }

    function burn(address _address, uint _value) public{
        if(tokenBalance[_address] >= _value){
            totalSupply -= _value;
            tokenBalance[_address] -= _value;
        }
    }
}
