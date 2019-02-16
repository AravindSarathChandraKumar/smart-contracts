pragma solidity 0.5.1;


contract exchange{
    
    address payable wallet;
    event Purchase(
	address indexed buyer,
	uint amount
	);
    mapping(address => uint) public balance;
    
    constructor(address payable _wallet) public{
        
        wallet =_wallet;
    }
    
    function buy() public payable{
        
        balance[msg.sender]+=1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender,1);
    }
}
