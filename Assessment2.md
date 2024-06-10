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
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;
contract MyToken {

    // public variables here
    string public Token_Name="Assasin";
    string public Token_Abbrv="Kill";
    uint256 public Total_Supply=0;//intialy the supply will be zero

    // mapping variable here
    mapping(address=>uint256)public Balances;
    //constructor to initialize the token details
  
    // mint function
    function mint(address Address, uint256 Value) public 
    {
      Total_Supply += Value;
      Balances[Address]+=Value;
    }

    // burn function
     function burn(address _Address, uint256 _Value) public 
    {
      if(Balances[_Address]>=_Value)
      {
          Total_Supply -= _Value;
          Balances[_Address]-=_Value;
      }
      else 
      {
         revert("Balance is less than the value to burn");
         //reverts this message if balance is insufficient
      }
    }
}
```
#Help
```
Mapping is a special data type in Solidity used to create key-value pairs. It's similar to a dictionary or a hash table in other programming languages.
mapping(address => uint256) public balances;
It means for each unique Ethereum address, there is an associated uint256 value, which in this context, represents the balance of tokens held by that address.The public keyword means that Solidity will automatically create a function that allows anyone to query the balance of a given address.
```


## Output

```
 Compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "^0.8.26" (or another compatible version), and then click on the "Compile assessment2.sol" button.
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.
After that go to the bottom at deployed /unpinned contracts  and cilck on side arrow with Mytoken contract
Here,we have to enter the address of the token which we can copy from the Account section and Enter the address in the Burn,Mint and Balances section.
Then transact by enetring the amount we want to add to or remove from the balance.
if the balance is insufficient ,we will revert a message to the burn function
Mint will Add the amount
Burn will Remove the balances
Total supply will return the Balances at last.
---

## Authors
Teena Neupane 
neupaneteena200397@gmail.com
