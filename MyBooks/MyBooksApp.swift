//
//  MyBooksApp.swift
//  MyBooks
//
//  Created by Terje Moe on 14/10/2025.
//





import SwiftUI
import SwiftData

@main
struct MyBooksApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
         .modelContainer(for: Book.self)
        }
            init() {
                print(URL.applicationSupportDirectory.path(percentEncoded: false))
        }
    }
