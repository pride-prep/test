//
//  main.swift
//  BookList
//
//  Created by Tommy Glasser on 3/13/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import Foundation

/*///////////////////////////////
 Pre-load the data
 *///////////////////////////////
// Create an empty array of books
var books: [Book] = [];

// Fill our array with all of the books in the book database
for book in bookData {
    var newBook: Book = Book(); // create a new book object
    // convert the dictionary format to object
    for (key, value) in book {
        newBook.convertDictToObj(key: key, value: value);
    }
    // push the object to the array
    books.append(newBook);
}
/*///////////////////////////////
 End of pre-load data
 *///////////////////////////////

/*///////////////////////////////
 Start of Interface
 *///////////////////////////////

var isFinished = false; // continue interface until users opts out
var input: String; // container for input
var menuOption: Int; // variable for options

print("Welcome to the PRIDE Prep Library!")

// allow user to use interface until option 3 is selected
while !isFinished {
    print("What would you like to do?")
    print("\t1) Search for a book")
    print("\t2) Display all library books")
    print("\t3) I'm done, log me out.")
    print("Option: ", terminator:"")
    input = readLine()!;
    // make sure that the user input is only a number
    if Double(input) != nil {
        menuOption = Int(input)!
        // ensure user only selects options 1-3
        switch(menuOption) {
        case 1: searchBooks() // search books
        case 2: // show all books
            for book in books {
                print(book.getInfo())
            }
        case 3: // exit program
            isFinished = true;
            print("Cya later!")
        default: print("Not a valid option");
        }
    } else {
        print("Please enter a valid number")
    }
    print()
}
