//Custom Modifiers creation eg
pragma solidity 0.5.1;

contract test{
    
    uint public count=0;
    address owner;
    mapping(uint=>Person) public people;
     modifier onlyOwner() {
         require(msg.sender == owner);
         _;
    }
    struct Person{
         uint id;
         string _fname;
         string _lname;
    }
    
   constructor() public{
       owner=msg.sender;
   }
    
    
    
    function addperson(
        string memory fname,string memory lname
        ) 
        public onlyOwner
        {
            inc();
            people[count]=Person(count,fname,lname);

        }
    
    
    function inc() private{
        
        count +=1;
    }
}
