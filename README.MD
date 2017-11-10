This package contains Lendoit's Smart Contracts for launching and managing Lendoit operations.


## Links

Github issue tracker and source code: <https://github.com/lendoit/contracts>

Telegram group for questions and discussion: https://t.me/Lendoit

Documentation: <https://ico.readthedocs.io/en/latest>

Solidity language: http://solidity.readthedocs.io/en/develop


## About the project
Lendoit is a decentralized peer-to-peer lending marketplace platform which connects borrowers and lenders from all over the world in a trusted, fast and easy manner using the advantages of Smart Contracts and Blockchain technology. 

Lendoit ICO stands for a token or cryptocurrency initial offering [tokensale](https://tokenmarket.net/what-is/ico). It is a common method in blockchain space, decentralized applications and in-game tokens for bootstrap funding of your project.


## Quick token sale walkthrough

![Quick token sale walkthrough](https://ico.readthedocs.io/en/latest/_images/walkthrough.png)

## Features and design goals

* **Best practices**: Smart contracts are written with the modern best practices of Ethereum community

* **Separation of concerns**: Tokensale, token and other logic lies in separate contracts that can be assembled together like lego bricks

* **Reusable**: The contract code is modularized and reusable across different layers, all variables are parametrized and there are no hardcoded values or magic numbers

* **Migration**: Token holders can opt in to a new version of the token contract in the case the token owner wants to add more functionality to their token

* **Build upon a foundation**: Instead of building everything from the scratch, our contracts are based on [OpenZeppelin contracts](https://github.com/OpenZeppelin/zeppelin-solidity/) as much as possible as they are the gold standard of Solidity development

## Installation

1. Clone this repository

2. Install the dependencies [Truffle](https://github.com/ConsenSys/truffle) (requires NodeJS 5.0+) and [Testrpc](https://github.com/ethereumjs/testrpc):
```
    npm install
``` 


## Using Truffle for testing

From the Contracts directory in your terminal:

From the Crowdfund directory in your terminal:

1. Launch a testrpc client with these arguments:
    ```
    testrpc --account="0xfa6a83f0e0c943f4d4654ae1d71d85f87f758a8f2846534b82c10e1070cf2e7a,1000000000000000000000000000000000000000000000"testrpc --account="0x19bc61f018488e683e5dd211bb1ad806a127cf4595b8cffb0821d017d4dee2bb,1000000000000000000000000000000000000000000000"testrpc --account="0x54bc25ebb3bab281ceff1bd7c93534726421e9669c353aaac8f1bbeb21be05c9,1000000000000000000000000000000000000000000000"testrpc --account="0xc3126ccdacb2f9f7956394f10c300a074a5fd59ee5f23df2d91dbd3e2510820e,1000000000000000000000000000000000000000000000"testrpc --account="0xcbefbe1454406dcf7a3849ee7808678a4abc039b8ba91f9eeb9f61c6ede803b4,1000000000000000000000000000000000000000000000"testrpc --account="0x07390a780157acacd91bd312cbfbeadb534c9aa47c426ae7b124334e5bbf3001,1000000000000000000000000000000000000000000000"testrpc --account="0xab073664853150f19468677d1be0165b7a6d781b4d285e99a48d24798b6001b0,1000000000000000000000000000000000000000000000"testrpc --account="0x7a3cb8ec310fc5f2a20c5706005df7f7f89b46dfbf879d41a040c21c61c21863,1000000000000000000000000000000000000000000000"testrpc --account="0xad7e6bd5ceddaaad396e81e6a69988c2bb52a35617272e5eef664836a7cf87d7,1000000000000000000000000000000000000000000000"
        ```



2. in a second terminal in the same directory run 
    ```
    truffle test
    ```

to run all test or

    ```
    truffle test <path>
    ```

to run tests individually
    

KNOWN ISSUES: Truffle tests will sometimes fail whole blocks of tests as testrpc fails to keep up with the test script. Retry or run individual 'contract' objects one at a time.

## License
Code released under the [MIT License](https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/LICENSE).



