// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract EventsManagement{
    struct Event{
        uint id;
        address organiser;
        string title;
        string discription;
        uint start;
        uint end;
        
    }
    mapping(uint=>Event) public idToEvent;
    mapping(address=>uint[]) public organiserToEvents;
    mapping(uint=>address[]) public idsToRegisterParticipants;
    mapping(address=>mapping(uint=>bool)) public singleRegisterToEvent;
    uint eventId;
    uint constant baseFee= 0.1 ether;
    function createEvent(string calldata _title,string calldata _desc,uint _start,uint _end) public payable returns(bool){
        require(msg.value>=1 ether,"Does't not sufficient for base fee");
        eventId++;
        Event memory _event = Event(eventId,msg.sender,_title,_desc,_start,_end);
        idToEvent[eventId]=_event;
        organiserToEvents[msg.sender].push(eventId);
        return true;
    }

    function returnMyEvents() view public returns(Event[] memory){
        uint[] memory ids= organiserToEvents[msg.sender];
        Event[] memory events = new Event[](ids.length);
        for(uint i=0;i<ids.length;i++){
            events[i]=(idToEvent[ids[i]]);
        }
        return events;
    }
    function deleteEvent(uint _id) view public returns(bool){
        Event memory _event= idToEvent[_id];
        uint[] memory ids= organiserToEvents[msg.sender];
        for(uint i=0;i<ids.length;i++){
            if(ids[i]==_id){
                ids[i]=ids[ids.length-1];
                delete ids[ids.length-1];
            }
        }
        delete _event;
        return true;
    }
    function registerForEvent(uint _id) public returns(bool){
        require(!singleRegisterToEvent[msg.sender][_id],"No Double Regiter");
        singleRegisterToEvent[msg.sender][_id]=true;
        idsToRegisterParticipants[_id].push(msg.sender);
        return true;
    }
}