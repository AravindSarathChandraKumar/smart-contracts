
//struct eg

pragma solidity 0.5.1;

contract test{

Person[] public people;                      //the size of array is unknown,so we need id to map in array

struct Person{
	string _fname;
	string _lname;

}

function addPersons(string memory fname,string memory lname)  public{
	people.push(Person(fname,lname));                                        
}

}