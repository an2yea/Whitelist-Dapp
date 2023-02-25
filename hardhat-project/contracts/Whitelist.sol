//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;


contract Whitelist {

    uint8 public maxWhitelistedAddresses;

    mapping (address =>bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor (uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    } 

    function addAddressToWhiteList() public {
        
        require(!whitelistedAddresses[msg.sender], "The sender is already a part of the whitelist");
       // require(numAddressesWhitelisted > maxWhitelistedAddresses, "Limit to Whitelisted Addresses reached, please come back later");

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
     }
}