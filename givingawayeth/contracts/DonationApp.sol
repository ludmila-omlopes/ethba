pragma solidity ^0.4.4;

import "@aragon/os/contracts/apps/AragonApp.sol";
import "@aragon/os/contracts/lib/zeppelin/math/SafeMath.sol";

contract DonationApp is AragonApp {
    using SafeMath for uint256;

    /// Events
    event RequestDonation(address indexed entity, uint256 amount, string description);
    event Donate(address indexed entity, uint256 value, uint requestId);

    /// State
   
    struct donationRequest {
        uint amount;
        string description;
        bool active;
        uint remainingAmount;
    }
    mapping (address => uint) public donationsPerAddress;
    address[] donatorsList;
    donationRequest[] lstDonationRequests;

    string hiTest = "Hello World";

    /// ACL
    bytes32 constant public SUGGEST_ROLE = keccak256("SUGGEST_ROLE");
    bytes32 constant public REQUEST_ROLE = keccak256("REQUEST_ROLE");

    function donate(uint256 _value, uint _requestId) external {
        if(_requestId != 0)
        {
            donationRequest storage req = lstDonationRequests[_requestId];
            require((req.remainingAmount) <= _value);
            req.remainingAmount = req.remainingAmount - _value;
            if(req.remainingAmount == 0) {
                req.active = false;
            }
        }

        //call the transfer with finance app
        
        if(donationsPerAddress[msg.sender] == 0)
        {
            donatorsList.push(msg.sender);            
            //mint new donation token to msg.sender
        }
        donationsPerAddress[msg.sender] = donationsPerAddress[msg.sender] + _value;
       // fire an event
    }  

    function requestDonation(uint _amount, string _description) auth(REQUEST_ROLE) external {
        // require voting app
        lstDonationRequests.push(donationRequest(_amount, _description, true, _amount));

        RequestDonation(msg.sender, _amount, _description);
    }
}
