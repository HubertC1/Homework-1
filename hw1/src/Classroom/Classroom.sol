// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // State variable to keep track of the number of times `register` has been called
    uint256 private registerCallCount;

    // Constructor to initialize state variables (optional in this case)
    constructor() {
        registerCallCount = 0;
    }

    function register() external returns (uint256) {
        // Increase the count each time the function is called
        registerCallCount++;

        // Check the number of times the function has been called
        if (registerCallCount == 1) {
            // Return 2000 the first time the function is called
            return 2000;
        } else if (registerCallCount == 2) {
            // Return 123 the second time the function is called
            return 123;
        } else {
            // Optional: Define behavior for subsequent calls, if necessary
            // For example, return 0 for all calls after the second call
            return 0;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (IClassroomV2(msg.sender).isEnrolled()){
            return 123;
        }else{
            return 2000;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        
    }
}
