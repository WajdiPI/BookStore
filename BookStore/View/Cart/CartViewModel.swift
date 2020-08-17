//
//  CartViewModel.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

class CartViewModel: ViewModel {

    @Published
    var state: CartState
    private var service: BookService

    init(service: BookService) {
        let cart = service.cartItems()
        self.state = CartState(cart: cart)
        self.service = service
    }

    func trigger(_ input: CartInput) {
        switch input {
        case .checkout:
            service.checkout()
            state.cart = service.cartItems()
        }
    }
    
}
