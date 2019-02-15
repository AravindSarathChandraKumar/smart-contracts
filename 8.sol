//Custom Modifiers creation for  time expiring
pragma solidity 0.5.1;

contract test{
    
    uint public count=0;
    uint openingTime =1550228763;
    address owner;
    mapping(uint=>Person) public people;
     modifier onlyOwner() {
         require(block.timestamp >= openingTime);
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
        public onlyWhileOpen
        {
            inc();
            people[count]=Person(count,fname,lname);

        }
    
    
    function inc() private{
        
        count +=1;
    }
}
