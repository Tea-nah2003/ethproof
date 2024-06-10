/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/
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
         //reverts this message 
      }
    }
}