
pragma solidity 0.5.1;
contract exchange{
    
    mapping(address => uint) public balance;
    address payable  wallet;
    
    constructor (address payable _wallet) public{
        
        wallet= _wallet;
    }
    function buy() public payable{
        
        balance[msg.sender] += 1;
        wallet.transfer(msg.value);
        
        
        
    }
}
