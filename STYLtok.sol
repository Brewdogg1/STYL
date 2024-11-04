// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.1.0/access/Ownable.sol";
import "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20FlashMint.sol";

/// @custom:security-contact conmerging@gmail.com
contract LifeStylistic is ERC20, ERC20Burnable, Ownable, ERC20FlashMint {
    constructor(address initialOwner)
        ERC20("lifeStylistic", "STYL")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 40000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
