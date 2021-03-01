pragma solidity ^0.6.2;


interface Iburn{
    function burn(uint256 amount) external returns (bool);
}

contract Burnr {
    
    address LND;
    address dev_pool;
    address rewards_pool;
    
    constructor (address token) public {
        LND = token;
    }
    
    
    // perfrom buyback on dex of choice
    // Needs interface 
    function _buyback(address tokenIn) internal {
        // do something
    }
    
    //dev funds implementation
    function _devfunds(uint256 amount) internal {
        // do something
    }
    
    
    //reward pool contract implementation
    function _rewardPool(uint256 amount) internal {
        // do something
    }
    
    //lottery contract implementation
    function _lottery(uint256 amount) internal {
        // do something
    }
    
    
    function burn(address tokenIn, uint256 amount) external {
        _devfunds(amount / 4);
        _rewardPool(amount / 4);
        _lottery(amount * 15 / 100);
        _burn(amount * 35 / 100);
    }
    
    
    function _burn(uint256 amount) internal {
        Iburn(LND).burn(amount);
    }
}