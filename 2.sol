pragma solidity 0.5.1;
contract test{

string public value;     // works same as that of function set() in sol 1 pgm.
constructor()public{

value="Welcome to Solidity";

}
function get()public view returns(string){
	
	return value;

}


}