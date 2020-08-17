//
//  BookListViewModel.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

class BookListViewModel: ViewModel {

    @Published
    var state: BookListState

    init(service: BookService) {
        let books = MockBookService().bookList()
        self.state = BookListState(service: service, books: books)
    }

    func trigger(_ input: Never) { }
}
