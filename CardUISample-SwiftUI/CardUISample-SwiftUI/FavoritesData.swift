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
    Favorite(id: 2, title: "Apple", urlString: "https://www.apple.com/jp/"),
    Favorite(id: 3, title: "Youtube", urlString: "https://www.youtube.com/"),
    Favorite(id: 4, title: "Amazon", urlString: "https://www.amazon.co.jp/"),
    Favorite(id: 5, title: "Twitter", urlString: "https://twitter.com/home"),
    Favorite(id: 6, title: "Facebook", urlString: "https://www.facebook.com/"),
    Favorite(id: 7, title: "Yahoo! JAPAN", urlString: "https://www.yahoo.co.jp/"),
    Favorite(id: 8, title: "Yahoo! JAPAN", urlString: "https://www.yahoo.co.jp/"),
    Favorite(id: 9, title: "Yahoo! JAPAN", urlString: "https://www.yahoo.co.jp/"),
    Favorite(id: 10, title: "Yahoo! JAPAN", urlString: "https://www.yahoo.co.jp/"),
]


