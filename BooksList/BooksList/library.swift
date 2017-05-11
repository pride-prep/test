//
//  library.swift
//  BooksList
//
//  Created by Tommy Glasser on 3/21/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import Foundation

// function for searching books under certain criteria based on user input
func searchBooks() {
    var isFinished = false;
    var input: String;
    var menuOption: Int;
    // let user access submenu until they wish to exit
    while !isFinished {
        // print submenu
        print("I would like to search by...")
        print("\t1) Author Name")
        print("\t2) Book Title")
        print("\t3) Books that are in stock")
        print("\t4) Price")
        print("\t5) Return to main menu")
        print("Option: ", terminator: "")
        input = readLine()!
        // check if submenu option is a number
        if Double(input) != nil {
            menuOption = Int(input)!
            // search the books by criteria
            switch(menuOption) {
            case 1: // prompt user for author name
                print("Enter author name: ", terminator:"")
                input = readLine()!
                searchBooksByCriteria(criteria: "author", data: input)
            case 2: // prompt user for book name
                print("Enter book name: ", terminator:"")
                input = readLine()!
                searchBooksByCriteria(criteria: "name", data: input)
            case 3: // return list of books that are in stock
                searchBooksByCriteria(criteria: "inStock", data: "")
            case 4:
                // we will need to get the min and max range of the price search
                var range: (Double, Double);
                print("Enter min price range: ", terminator:"")
                range.0 = Double(readLine()!)!
                print("Enter max price range: ", terminator:"")
                range.1 = Double(readLine()!)!
                searchBooksByCriteria(criteria: "range", data: range)
            case 5: isFinished = true // return back to main menu
            default:
                print("Not a valid option")
            }
        } else {
            print("Please enter a valid option number")
        }
    }
}

// search for books based on criteria
func searchBooksByCriteria(criteria: String, data: Any) {
    var count: Int = 0; // count used as flag for number of books in stock and price range
    // if books are in stock
    if criteria == "inStock" {
        for book in books {
            if book.inStock {
                print(book.getInfo())
                count += 1;
            }
        }
        if count == 0 {
            print("No books are in stock")
        }
        return // avoid last statement
    } else if criteria == "author" {
        for book in books {
            if book.author == data as! String {
                print(book.getInfo())
                return // return as soon as we find a result
            }
        }
    } else if criteria == "name" {
        for book in books {
            if book.name == data as! String {
                print(book.getInfo())
                return
            }
        }
    } else {
        let range: (Double, Double) = data as! (Double, Double)
        for book in books {
            // book price must be between the minimum and maximum range entered
            if book.price >= range.0 && book.price <= range.1 {
                print(book.getInfo())
                count += 1
            }
        }
        if count == 0 {
            print("No books match the price range given")
        }
        return
    }
    // output no results if no results are found in for loop searches
    print("No results for \(data)")
}

