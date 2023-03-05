// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Array {
    // Declare a string variable which is public
    string public name = "Daniel";

    // Several ways to initialize an array
    // Arrays initialized here are considered state variables that get stored on the blockchain
    // These are called storage variables
    uint[] public arr1;
    uint[] public arr2 = [1, 2, 3];

    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    /*
        Name of the function is get
        It gets the value of element stored in an array's index
    */
    function get(uint i) public view returns (uint) {
        return arr2[i];
    }

     /*
        Solidity can return the entire array.
        This function gets called with and returns an uint[] memory.
        memory - the value is stored only in memory, and not on the blockchain
                it only exists during the time the function is being executed

        Memory variables and Storage variables can be thought of as similar to RAM vs Hard Disk.
        Memory variables exist temporarily, during function execution, whereas Storage variables
        are persistent across function calls for the lifetime of the contract.
        Here the array is only needed for the duration while the function executes and thus is declared as a memory variable
    */
    function getArr(uint[] memory _arr) public view returns (uint[] memory) {
        return _arr;
    }

    /*
        This function returns string memory.
        The reason memory keyword is added is because string internally works as an array
        Here the string is only needed while the function executes.
    */
    function foo() public returns (string memory) {
        return "C";
    }

    function doStuff(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr2.push(i);
        // Remove last element from array
        // This will decrease the array length by 1
        arr2.pop();
        // get the length of the array
        uint length = arr2.length;
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case it resets the value at index 1 in arr2 to 0
        uint index = 1;
        delete arr2[index];
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
        // create string in memory
        string memory hi = "hi";
    }
}