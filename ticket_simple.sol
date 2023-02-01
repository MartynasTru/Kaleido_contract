pragma solidity ^0.8.17;

contract Ticketing {
    struct Ticket {
        uint ticketID;
        uint userID;
}

Ticket[] public tickets;

constructor() public {
}

function createTicket(uint _ticketID, uint _userID) public {
    Ticket memory newTicket = Ticket({
        ticketID: _ticketID,
        userID: _userID
    });
    tickets.push(newTicket);
}

function getUserID(uint _ticketID) public view returns (uint) {
    for (uint i = 0; i < tickets.length; i++) {
        if (tickets[i].ticketID == _ticketID) {
            return tickets[i].userID;
        }
    }
        return 0;
    }
}