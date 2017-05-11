//
//  books.swift
//  BooksList
//
//  Created by Tommy Glasser on 3/21/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import Foundation

// Book Class that contain properties of a book
class Book {
    // properties
    var id: String = "";
    var cat: [String] = [];
    var name: String = "";
    var author: String = "";
    var series_t: String = "";
    var sequence_i: Int = 0;
    var genre_s: String = "";
    var inStock: Bool = false;
    var price: Double = 0.0;
    var pages_i: Int = 0;
    // basic constructor
    init(){}
    // initializer for all properties
    init(id: String, cat: [String], name: String, author: String, series_t: String, sequence_i: Int, genre_s: String, inStock: Bool, price: Double, pages_i: Int) {
        self.id = id;
        self.cat = cat;
        self.name = name;
        self.author = author;
        self.series_t = series_t;
        self.sequence_i = sequence_i;
        self.genre_s = genre_s;
        self.inStock = inStock;
        self.price = price;
        self.pages_i = pages_i;
        
    }
    // returns all information of a given book
    func getInfo() {
        print("Book Name: \(self.name)")
        print("Book Author: \(self.author)")
        print("Book Categories: \(self.cat)")
        print("Book ISBN: \(self.id)")
        print("Book Series: \(self.series_t)")
        print("Book Sequence: \(self.sequence_i)")
        print("Book Genre: \(self.genre_s)")
        print("Book Pages: \(self.pages_i)")
        print("Book Price: \(self.price)")
        print("In Stock?: \(self.inStock)")
    }
    
    func convertDictToObj(key: String, value: Any) {
        switch(key) {
        case "id": self.id = value as! String;
        case "cat": self.cat = value as! [String];
        case "name": self.name = value as! String;
        case "author": self.author = value as! String;
        case "series_t": self.series_t = value as! String;
        case "sequence_i": self.sequence_i = value as! Int;
        case "genre_s": self.genre_s = value as! String;
        case "inStock": self.inStock = value as! Bool;
        case "price": self.price = value as! Double;
        case "pages_i": self.pages_i = value as! Int;
        default: print("There is no key")
        }
    }
}





