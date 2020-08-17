//
//  BookService.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

protocol BookService {
    // Book list
    func bookList() -> [Book]

    // Book detail
    func bookDetails(bookId: Int) -> BookDetail
    func numberOfCartItems() -> Int
    func addToCart(bookId: Int)

    // Cart
    func cartItems() -> Cart
    func checkout()
}
