// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GoodNoonToken is ERC20, Ownable {
    mapping (address => bool) private gameClocked;

    constructor() ERC20("Good Noon Token", "GNT") {
        _mint(msg.sender, 14000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public {
        
        if(balanceOf(msg.sender) < 99999){
            if((balanceOf(msg.sender)+ amount) > 99999){
                require(!gameClocked[msg.sender], "maximum 99999");
                gameClocked[msg.sender] = true;    
            }
            _mint(to, amount);

        }
    }

    function isClocked(address account) public view returns(bool){
        return gameClocked[account];


    }

}