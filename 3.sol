// enum example

pragma solidity 0.5.1;
contract test{

enum State {Running,Waiting,Stop}

State public state;
constructor()public{
    
    state=State.Running;
}

function set()public {
    
    state=State.Stop;
    
    
}

function check() public view returns (bool){
    
    return  state == State.Stop;
    
}

}