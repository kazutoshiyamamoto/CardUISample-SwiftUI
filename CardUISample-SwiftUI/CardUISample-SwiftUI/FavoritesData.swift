//
//  FavoritesData.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import Foundation

struct Favorite: Identifiable {
    var id: Int
    var title: String
    var urlString: String
}

var favorites: [Favorite] = [
    Favorite(id: 1, title: "Google", urlString: "https://www.google.com/"),
    Favorite(id: 2, title: "Youtube", urlString: "https://www.youtube.com/"),
    Favorite(id: 3, title: "Amazon", urlString: "https://www.amazon.co.jp/"),
    Favorite(id: 4, title: "Twitter", urlString: "https://twitter.com/home"),
    Favorite(id: 5, title: "Facebook", urlString: "https://www.facebook.com/")
]


