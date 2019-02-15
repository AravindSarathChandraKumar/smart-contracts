

pragma solidity 0.5.1;

contract test{
    
    uint public count=0;
    mapping(uint=>Person) public people;
    struct Person{
         uint id;
         string _fname;
         string _lname;
    }
    
    function addperson(string memory fname,string memory lname) public{
        inc();
        people[count]=Person(count,fname,lname);

    }
    
    
    function inc() internal{
        
        count +=1;
    }
}
