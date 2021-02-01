// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;


interface IWStaked{
    function NotifyAddStake(address account, uint256 amount) external returns(bool);
    function NotifyWithdrawFunds(address account, uint256 amount) external returns(uint256);
    function NotifyActiveChanged(bool activeStatus)  external returns(bool);
    
    function StakeExist(address account) external returns (bool) ;
    function setAutoCompound(address account, bool active)  external returns(uint256);
    function addToStake(address account, uint256 addAmount) external returns(uint256);
    function newStake(address account,uint256 amount ) external returns (uint256);
    function getStake(address account) external returns( uint256 ,bool);
    function removeStake(address account) external;
    function renewStake(address account, uint256 newAmount) external returns(uint256);
    function getStakeCount() external returns(uint256) ;
    function getLastIndexStakes() external returns (uint256) ;
    function getStakeByIndex(uint256 index) external  returns(address, uint256,bool,uint8) ;
    function getAutoCompoundStatus(address account) external returns(bool);
    function removeAllStake() external returns(bool);
    function balanceOf(address account)  external returns(uint256) ;
    
}