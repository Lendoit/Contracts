pragma solidity ^0.4.6;


import "./StandardTokenProtocol.sol";


/**
* It stores the borrower’s score alongside the details of the score provider It stores the borrower’s veriﬁcation alongside the details of
* the veriﬁcation provider (usually the same as the score provider, but can be different)
* It stores the loan conditions and acts as an electronic agreement
* It runs the lender’s tender for the interest rate
* It acts as a trusted intermediate that is responsible for holding and releasing the funds to the borrower
* It is responsible for updating the Smart Reputation Contract with an objective record
* It is responsible for transferring funds into the Smart Compensation Fund Contract, and from the Smart Compensation Fund Contract in the event of default
* It is responsible for interacting with the Smart Conversion Contract and auto converts the company fees and interest payments to Lendoit * tokens (LOANs)
* It is responsible for the changes of ownership in loans made by transactions between lenders in the Secondary Market It is responsible * for the collectors’
* tender in case of a defaulted loan 
*/


contract LoanSmartContract {

}