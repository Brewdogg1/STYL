// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20FlashMint.sol";

/// @custom:security-contact brewdogpromotions@proton.me
contract LifeStylistic is ERC20, ERC20Burnable, Ownable, ERC20Permit, ERC20FlashMint {
    constructor(address initialOwner)
        ERC20("lifeStylistic", "STYL")
        Ownable(initialOwner)
        ERC20Permit("lifeStylistic")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
