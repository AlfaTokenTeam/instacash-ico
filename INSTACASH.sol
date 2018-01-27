pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract INSTACASH is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function INSTACASH(address _owner)  UpgradeableToken(_owner) {
    name = "INSTACASH";
    symbol = "INSTAC";
    totalSupply = 2000000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}