//
//  Book.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation
import SwiftUI

struct Book: Identifiable {
    var id: Int
    var title: String
    var author: String
    var price: Double
    var imageName: String
}

extension Book {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
