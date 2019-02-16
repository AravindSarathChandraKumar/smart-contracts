pragma solidity 0.5.1;

contract ERC20{
     mapping(address => uint) public balance;
    function mint() public{
     
        balance[tx.origin]++;
    }
}

contract exchange{
    
    address payable wallet;
    address token;
    constructor(address payable _wallet, address _token) public{
        
        wallet =_wallet;
        token=_token;
    }
    
    function() external payable{    //Fallback function
        buy();
    }
    function buy() public payable{
        ERC20(address(token)).mint(); //calling function from another contract 
        wallet.transfer(msg.value);
    }
}
