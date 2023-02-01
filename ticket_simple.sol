pragma solidity ^0.8.17;

contract Ticketing {
    struct Ticket {
        uint ticketID;
        uint userID;
}
    struct TicketHolder {
        string name;
        string gender;
        uint userID;
}

Ticket[] public tickets;
TicketHolder[] public ticketholders;

constructor() public {
}

function createTicket(uint _ticketID, uint _userID) public {
    Ticket memory newTicket = Ticket({
        ticketID: _ticketID,
        userID: _userID
    });
    tickets.push(newTicket);
}

function createUser(string memory _name, string memory _gender, uint _userID) public {
    TicketHolder memory newticketholder = TicketHolder({
        name: _name,
        gender: _gender,
        userID: _userID
    });
    ticketholders.push(newticketholder);
}

function getUserID(uint _ticketID) public view returns (uint) {
    for (uint i = 0; i < tickets.length; i++) {
        if (tickets[i].ticketID == _ticketID) {
            return tickets[i].userID;
        }
    }
        return 0;
    }

function getTicketInfoByUserID(uint _userID) public view returns (Ticket memory) {
    for (uint i = 0; i < tickets.length; i++) {
      if (tickets[i].userID == _userID) {
            return tickets[i];
        }
    }
}

}



