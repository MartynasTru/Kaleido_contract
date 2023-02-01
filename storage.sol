pragma solidity ^0.8.17;

contract Ticketing {
   struct Ticket {
      string eventName;
      uint eventDate;
      string eventLocation;
      address owner;
      uint ticketID;
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

   constructor(string memory eventName, uint eventDate, string memory eventLocation, uint ticketID) public {
      createTicket(eventName, eventDate, eventLocation, ticketID);
   }

   function getTicketIDs(uint i) public view returns (uint[] memory) {
         return ticketHolders[i].ticketIDs; 
   }

   function createTicket(
      string memory _eventName,
      uint _eventDate,
      string memory _eventLocation,
      uint _ticketID
   ) public returns (uint ticketID) {
      Ticket memory newTicket = Ticket({
         eventName: _eventName,
         eventDate: _eventDate,
         eventLocation: _eventLocation,
         owner: msg.sender,
         ticketID: _ticketID
         });
      emit TicketCreated(ticketID, _eventName, _eventDate, _eventLocation);
      return ticketID;
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
   function query(uint i) public view returns (uint retVal) {
      return tickets[i].ticketID;
   }

}
