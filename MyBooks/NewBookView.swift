//
//  NewBookView.swift
//  MyBooks
//
//  Created by Terje Moe on 14/10/2025.
//




import SwiftUI
import SwiftData

struct NewBookView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    @State private var title = "-" // "" må være sånn for iphone
    @State private var author = "-" // "" må være sånn for iphone
    var body: some View {
        NavigationStack {
            Form {
                TextField("Book Title", text: $title)
                TextField("Author", text: $author)
                Button("Create") {
                    let newBook = Book(title: title, author: author)
                    context.insert(newBook)
                    dismiss()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
                .disabled(title.isEmpty || author.isEmpty)
                .navigationTitle("New Book")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NewBookView()
}
