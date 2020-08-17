//
//  BookDetail.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation
import SwiftUI

struct BookDetail {
    var id: String
    var bookId: Int
    var author: String
    var title: String
    var price: Double
    var genre: [Genre]
    var kind: String
    var description: String
    var imageName: String
    var isAvailable: Bool
}

extension BookDetail {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
