pragma solidity 0.5.1;
contract test{

string value;
constructor()public{

value="Hello world";

}
function get() public view returns(string memory){

	return value;

}

function set(string memory _value) public{

	value= _value;
}

}