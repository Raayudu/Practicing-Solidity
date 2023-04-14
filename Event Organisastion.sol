//SPDX-Licence-Identifier:GPL:3.0
pragma solidity^0.8.0;
contract EventOrg{
    uint256 public Nooftickets;
    uint256  public ticketprice;
    uint256 public totalamount;
    uint256 public StartAt;
    uint256 public EndAt;
    uint256 public Timestamp;
    string public message="Buy your First Event Ticket";
            constructor (uint256 _ticketprice){
                ticketprice =_ticketprice;
                StartAt= block.timestamp;
                EndAt=block.timestamp + 7 days;
                timerange=(EndAt-StartAt)/60/60/24;
                function buyticket(uint256 _value) public  returns(uint256 TicketId){
                    Noofticket++; 
                    totalamount +=_value;
                    ticketId=NoofTicket;

                }
                function getAmount() public view returns(uint256){
                    return total amount;
                }
            }
    
}