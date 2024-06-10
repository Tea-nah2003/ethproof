# Creating our own token

We will create a token which will store some data and the data have to be updated whether by adding or emoving some of the variable's data and mapping the token with a respective address.

## Description

We will create a contract  to fulfill the following requirements:
1.Our contract will have public variables that store the details about our coin (Token Name, Token Abbrv., Total Supply)
2.Our contract will have a mapping of addresses to balances (address => uint)
3.We will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount.
4.Our contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address.
5.Lastly, Our burn function should have conditionals to make sure the balance of account is greater than or equal to the amount that is supposed to be burned.

## Getting Started

### Installing

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.


### Executing program

We have to create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Assesment2.sol). 

```
code blocks for commands
```

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Contributors names and contact info

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
