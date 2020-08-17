//
//  Cart.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

struct Item: Identifiable {
    var id: String
    var item: Book
    var units: Int
}

struct Cart {
    var items: [Item]
    var numberOfItems: Int
    var total: Double
}
