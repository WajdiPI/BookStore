//
//  CartButtonView.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfItems: Int

    var body: some View {
        VStack {
            Image("iconCart")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .foregroundColor(.black)
                .overlay(ImageOverlay(numberOfItems: numberOfItems), alignment: .center)
            Spacer()
        }
    }

    struct ImageOverlay: View {
        var numberOfItems: Int

        var body: some View {
            ZStack {
                Text(String(numberOfItems))
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(5)
            }
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfItems: 3)
    }
}
