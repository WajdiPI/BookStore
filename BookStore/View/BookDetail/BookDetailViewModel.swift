//
//  BookDetailViewModel.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

class BookDetailViewModel: ViewModel {

    @Published
    var state: BookDetailState

    init(service: BookService, id: Int) {
        let detail = service.bookDetails(bookId: id)
        let items = service.numberOfCartItems()
        state = BookDetailState(service: service, bookDetail: detail, cartItems: items)
    }

    func trigger(_ input: BookDetailInput) {
        switch input {
        case .addBookToCart:
            state.service.addToCart(bookId: state.bookDetail.bookId)
            state.cartItems = state.service.numberOfCartItems()
        case .reloadState:
            state.bookDetail = state.service.bookDetails(bookId: state.bookDetail.bookId)
            state.cartItems = state.service.numberOfCartItems()
        }
    }
}
