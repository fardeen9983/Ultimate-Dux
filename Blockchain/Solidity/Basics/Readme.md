# Solidity : The language for smart contracts

Solidity is an Object Oriented (used to be Contract oriented), high level language which is most popularly used for writing smart contracts on the Ethereum Platform. It is based on the poular languages like C++, Python and JavaScript and it runs on the Ethereum Virtual Machine (EVM), a concept derived from Java Virtual Machine (JVM), but optimised for contract oriented programming supported on the Ethereum Blockchain.

> The latest version of Solidity at the time of writing this doc : 0.6.1. This number may vary at your time of viewing.

## Installation

The [Official Documentation](https://solidity.readthedocs.io/en/v0.6.1/installing-solidity.html) describes a large number of methods for gettings hands on Solidity compiler and repsective IDE on you choice of OS.

**solc** is the original compiler for SOlidity written in C++.

You can build the compiler from source using **cmake**, use a package manager like **brew**, **apt** to directly install it to the system. The guys at Node.js Community created a NPM package **[solc](https://www.npmjs.com/package/solc)** which can be directly used for JS projects; though it has fewer features than the original compiler.

The best option for local setup and execution of smart contracts is to use Remix IDE - You can download the Remix IDE releases from the [repo](https://github.com/ethereum/remix-ide/releases) or install as a NPM package:

```bash
npm i -g remix-ide
```

You might need to setup Visual Studio 2017 build tools for it to work properly.

Also another option is to go for the [Desktop version](https://github.com/ethereum/remix-desktop/releases/tag/v1.0.3-beta.5) of Remix IDE launched in late 2019.

> Note : The desktop app is still in Beta version at the time of writing this doc

## Sailent Features

- High level language
- Object Oriented
- Contract Based
- Statically typed
- Inspired from C++, Python, Java
- Primary language for writing Smart Contracts on Ethereum Blockchain
- Ends with .sol extension

## Remix Online

If you want to avoid installing anything on your system to run Solidity code, you can use the good old Internet and head over to this link : [Remix - Ethereum IDE](https://remix.ethereum.org/). This is an online IDE for creating and running Ethereum Blockchain and smart contracts without having to go through a local setup.

## References

1. [Solidity Tutorial - A Full Course on Ethereum, Blockchain Development, Smart Contracts, and the EVM](https://www.youtube.com/watch?v=ipwxYa-F1uY)

2. [Dapp University](https://www.dappuniversity.com/)

3. [Official Solidity Documentation : 0.6.1](https://solidity.readthedocs.io/en/v0.6.1/)

4. [Solidity for Beginners · Smart Contract Development Crash Course](https://www.dappuniversity.com/articles/solidity-tutorial)
