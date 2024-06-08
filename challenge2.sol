//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;
contract unitconverter
{
    uint public amount;//initial money
    function setWei(uint _wei)external
    {
        amount=_wei;//store amount in wei
    }
    function getwei() external view returns(uint)
    {
        return amount;
    }
    function getgwei()external view returns(uint)
    {
    return amount/1 gwei;//convert wei into gwei 1gwei=10^9 wei
    }
    function getether()external view returns(uint)
    {
        return amount/1 ether;//convert into ether 1 ether=10^18 wei
    }
}