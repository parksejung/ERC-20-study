// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract PPS is ERC20, Ownable {
    
    constructor() ERC20("PPS Token","PPS") {}
    
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
}
