// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Counter {
  uint256 private number = 0;
  address public owner = msg.sender;

  function getNumber() public view returns (uint256 _number) {
    _number = number;
    return _number;
  }

  function setNumber(uint256 _number) public returns (bool success) {
    require(msg.sender == owner, "This function is restricted to owner");
    number = _number;
    success = true;
    return success;
  }
}