// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC20Token is ERC20, Ownable(msg.sender){
constructor() ERC20("Tether", "USDT") {
    _mint(msg.sender, 1_000_001* 10 ** 18);
}
    
    function mint(address to, uint amount) public{
        _mint(to, amount);
    }

    function burn(uint amount) public {
        _burn(msg.sender, amount);
    }
}
