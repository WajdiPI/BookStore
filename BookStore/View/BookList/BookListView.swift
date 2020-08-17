//
//  BookListView.swift
//  BookStore
//
//  Created by Katsu on 8/15/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import SwiftUI

struct BookListState {
    var service: BookService
    var books: [Book]
}

struct BookListView: View {

    @ObservedObject
    var viewModel: AnyViewModel<BookListState, Never>

    var body: some View {
        NavigationView {
            List(viewModel.state.books) { book in
                NavigationLink(destination: NavigationLazyView(BookDetailView(service: self.viewModel.state.service, bookId: book.id))) {
                    BookRow(book: book)
                }
            }
            .navigationBarTitle("Book list")
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = AnyViewModel(BookListViewModel(service: MockBookService()))
        return BookListView(viewModel: viewModel)
    }
}
