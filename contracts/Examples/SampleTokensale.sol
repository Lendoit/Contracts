pragma solidity ^0.4.11;

import "../tokensale/CappedTokensale.sol";
import "../tokensale/RefundableTokensale.sol";
import "../token/MintableToken.sol";

/**
 * @title SampleTokensaleToken
 * @dev Very simple ERC20 Token that can be minted.
 * It is meant to be used in a tokensale contract.
 */
contract SampleTokensaleToken is MintableToken {

  string public constant name = "Sample Tokensale Token";
  string public constant symbol = "STT";
  uint8 public constant decimals = 18;

}

/**
 * @title SampleTokensale
 * @dev This is an example of a fully fledged tokensale.
 * The way to add new features to a base tokensale is by multiple inheritance.
 * In this example we are providing following extensions:
 * CappedTokensale - sets a max boundary for raised funds
 * RefundableTokensale - set a min goal to be reached and returns funds if it's not met
 *
 * After adding multiple features it's good practice to run integration tests
 * to ensure that subcontracts works together as intended.
 */
contract SampleTokensale is CappedTokensale, RefundableTokensale {

  function SampleTokensale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet)
    CappedTokensale(_cap)
    FinalizableTokensale()
    RefundableTokensale(_goal)
    Tokensale(_startTime, _endTime, _rate, _wallet)
  {
    //As goal needs to be met for a successful tokensale
    //the value needs to less or equal than a cap which is limit for accepted funds
    require(_goal <= _cap);
  }

  function createTokenContract() internal returns (MintableToken) {
    return new SampleTokensaleToken();
  }

}