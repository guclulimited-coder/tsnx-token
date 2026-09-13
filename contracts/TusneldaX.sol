// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TusneldaX is ERC20 {
    uint256 public constant MAX_SUPPLY = 100_000_000 * 10 ** 18;

    constructor() ERC20("TusneldaX", "TSNX") {
        _mint(msg.sender, MAX_SUPPLY);
    }
}
