//SPDX-License-Identifier:MIT

pragma solidity^0.8.6;

contract eventorg{

    uint public nooftickets;
    uint public ticketprice;
    uint public totalamount;
    uint public startAt;
    uint public endAt;
    uint public timestamp;
    uint public timerange;
    string public message="Buy Your First Event Ticket";

    constructor(uint _ticketprice){
        ticketprice =_ticketprice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timerange = (endAt-startAt)/60/60/24;


    } 
    function buyticket(uint256 _value) public  returns(uint256 TicketId){
                    nooftickets += nooftickets; 
                    totalamount +=_value;
                    TicketId = nooftickets;

                }
                function getAmount() public view returns(uint256){
                    return totalamount;
                }

}