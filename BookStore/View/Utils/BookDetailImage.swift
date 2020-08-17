//
//  BookDetailImage.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import SwiftUI

import SwiftUI

struct BookDetailImage: View {
    let image: Image

    var body: some View {
        image
        .resizable()
        .frame(width: 180, height: 280)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
}
