# Typescript: The stricter sibling of JavaScript

Typescript, a language developed by Microsoft, is a fully typed language which starts and ends on Javascript much like it's sibling but is also friends with other languages like Java and C++, reminding you always to write code in good practices.

> Always keep your types in check and don't forget your dose of semi-colons, or I might throw some errors your way

## Installation

You can download the source code from TypeScript and build it locally on your system. It is available as a public repo on [Github](https://github.com/Microsoft/TypeScript)

Or you can install Typescript as a package using `npm` or `yarn`. So it's a no-brainer that you have first to install Node.js itself.

You can do so on Linux based platform from your terminal itself using your package manager. On Windows, we are not fortunate enough to have a good package manager already installed if you have `choco` installed, good for you.

Or you can use the following [link](https://nodejs.org/en/download/) and select your OS and download option. My advice will be to go with the LTS version (mostly used in organisation for stability).

Using NPM :

```bash
npm install -g typescript
```

Using Yarn :

```bash
yarn global add typescript
```

This will add typescript CLI tools to your path, and you will be able to compile typescript files straight from the terminal/cmd.

To install the typescript language locally, do the following:

Using NPM :

```bash
npm install typescript --save-dev
```

Using Yarn:

```bash
yarn add typescript --dev
```

## Compile

Typescript files end with the `.ts` extension and using the typescript CLI command `tsc`.

Just point your terminal/cmd to the directory containing TypeScript files and do this:

```bash
tsc file.ts
```

## Project Setup

Now you are ready to go with developing programs in TypeScript. There are plenty of applications where you can start using TS. Angular is by default using TS.

You can also set up a simple TypeScript project locally using the TS node module/ CLI tool `tsc`.

```bash
# For global installations
tsc --init

# For local installations
./node_modules/.bin/tsc --init

# Using npx
npx tsc --init
```

> You can learn more about `npx` and how it is used right [here](https://github.com/fardeen9983/Ultimate-Dux/tree/master/JavaScript/Tools/npx)

## Using **tslint**

**tslint** is lint or a linter for TS language.

A linter is a tool that analyses the code as you write it and highlights syntax errors, issues, bad practises and pushes you as a programmer to write better code. It would be best if you always used good linter whenever possible. Writing optimal code is the first step to good programming.

> More details on "[Benefits of using a Linter](https://sourcelevel.io/blog/what-is-a-linter-and-why-your-team-should-use-it)"

Now TS has a

## References

1. [How to Install and Start Using TypeScript](https://www.freecodecamp.org/news/how-to-install-and-begin-using-typescript/)

2. [Setting Up a New TypeScript Project
   ](https://alligator.io/typescript/new-project/)

3. [Typescript Official Page](https://www.typescriptlang.org)

4. [What is a linter and why your team should use it?](https://sourcelevel.io/blog/what-is-a-linter-and-why-your-team-should-use-it)
