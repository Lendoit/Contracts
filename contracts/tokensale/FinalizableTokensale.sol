pragma solidity ^0.4.11;

import '../SafeMath.sol';
import '../ownership/Ownable.sol';
import './Tokensale.sol';

/**
 * @title FinalizableTokensale
 * @dev Extension of Tokensale where an owner can do extra work
 * after finishing.
 */
contract FinalizableTokensale is Tokensale, Ownable {
  using SafeMath for uint256;

  bool public isFinalized = false;

  event Finalized();

  /**
   * @dev Must be called after tokensale ends, to do some extra finalization
   * work. Calls the contract's finalization function.
   */
  function finalize() onlyOwner public {
    require(!isFinalized);
    require(hasEnded());

    finalization();
    Finalized();

    isFinalized = true;
  }

  /**
   * @dev Can be overridden to add finalization logic. The overriding function
   * should call super.finalization() to ensure the chain of finalization is
   * executed entirely.
   */
  function finalization() internal {
  }
}