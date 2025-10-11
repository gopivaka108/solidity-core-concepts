// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStructures {
    // Fixed-size array
    uint[3] public fixedArray = [10, 20, 30];

    // Dynamic array
    uint[] public dynamicArray;

    // Struct definition
    struct Book {
        string title;
        uint pages;
    }

    Book[] public books;

    // Add to dynamic array
    function addToDynamicArray(uint _value) public {
        dynamicArray.push(_value);
    }

    // Add a book to the library
    function addBook(string memory _title, uint _pages) public {
        books.push(Book(_title, _pages));
    }

    // Get book details
    function getBook(uint index) public view returns (string memory, uint) {
        Book memory b = books[index];
        return (b.title, b.pages);
    }
}
