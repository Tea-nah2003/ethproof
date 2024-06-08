//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;

contract vartesting
{
    uint uid;//state variable
    string name;
    address private Useraddress;
    bool  gender; 

    function getuid() public view returns (uint) 
    {
        return uid;
    }
    function setuid(uint _uid) public returns(uint)
    {
      uid=_uid;
      return uid;
    }
    function getname() public view returns (string memory) 
    {
        return name;
    }
    function setname(string memory _name) public returns(string memory)
    {
      name=_name;
      return name;
    }
    function getgender() public view returns (bool) 
    {
        return gender;
    }
    function setgender(bool _gender) public returns(bool)
    {
      gender=_gender;
      return gender;
    }
    function getUseraddress() public view returns (address) 
    {
        return Useraddress;
    } 
}