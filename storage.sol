
pragma solidity ^0.8.17;

contract Ticketing {
   struct Ticket {
      string eventName;
      uint eventDate;
      string eventLocation;
      address owner;
      uint ticketCount;
   }

   struct TicketHolder {
      string name;
      string gender;
      address user_address;
      uint[] ticketIDs;
   }

   Ticket[] public tickets;
   TicketHolder[] public ticketHolders;

   event TicketTransferred (
      uint ticketID,
      address from,
      address to
   );

   event TicketCreated (
      uint ticketID,
      string eventName,
      uint eventDate,
      string eventLocation
   );

   constructor(string memory eventName, uint eventDate, string memory eventLocation) public {
      createTicket(eventName, eventDate, eventLocation);
   }

   function get() public view returns (uint retVal) {
      return Ticket.owner;
   }

   function query() public view returns (uint retVal) {
      return tickets;
   }

   function createTicket(
      string memory _eventName,
      uint _eventDate,
      string memory _eventLocation
   ) public returns (uint ticketID) {
      // Ticket memory newTicket = Ticket({
      //    eventName: _eventName,
      //    eventDate: _eventDate,
      //    eventLocation: _eventLocation,
      //    owner: msg.sender,
      //    ticketCount: 1
      //    });
      // ticketID = tickets.push(newTicket) - 1;
      // emit TicketCreated(ticketID, eventName, eventDate, eventLocation);
      // return ticketID;
      }

      // Add a new ticket to the tickets array
      // Update the transferCount for the new ticket
      // Emit the TicketCreated event
      // Return the ID of the new ticket
   }

   function transferTicket(
      uint _ticketID,
      address _to
   ) public returns (bool success) {
      // Check if the transfer is valid (e.g. transfer limit not exceeded)
      // Update the owner of the ticket
      // Increment the transferCount for the ticket
      // Update the ticketIDs for the current and new ticket holders
      // Emit the TicketTransferred event
      // Return true if the transfer was successful
   }
}
