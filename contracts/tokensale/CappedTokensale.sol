pragma solidity ^0.4.11;

import '../math/SafeMath.sol';
import './Tokensale.sol';

/**
 * @title CappedTokensale
 * @dev Extension of Tokensale with a max amount of funds raised
 */
contract CappedTokensale is Tokensale {
  using SafeMath for uint256;

  uint256 public cap;

  function CappedTokensale(uint256 _cap) {
    require(_cap > 0);
    cap = _cap;
  }

  // overriding Tokensale#validPurchase to add extra cap logic
  // @return true if investors can buy at the moment
  function validPurchase() internal constant returns (bool) {
    bool withinCap = weiRaised.add(msg.value) <= cap;
    return super.validPurchase() && withinCap;
  }

  // overriding Tokensale#hasEnded to add cap logic
  // @return true if tokensale event has ended
  function hasEnded() public constant returns (bool) {
    bool capReached = weiRaised >= cap;
    return super.hasEnded() || capReached;
  }

}