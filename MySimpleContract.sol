// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0 < 0.9.0;

contract MySimpleContract {
 // Define Variables
string private firstName;
string private lastName ;
string private major;
string private minor;

 // Setter function 
    function setPersonData(
        string memory _firstName,
        string memory _lastName,
        string memory _major,
        string memory _minor

    ) public {
      firstName  = _firstName;
        lastName = _lastName;
        major = _major;
        minor = _minor;

    }

   // Getter function 
   function getFirstName() public view returns (string memory) {
   return firstName;
    }

   function getLastName() public view returns (string memory) {
   return lastName;
}
   function getMajor() public view returns(string memory) {
   return major;
}
   function getMinor() public view returns(string memory) {
   return minor;
}

}


