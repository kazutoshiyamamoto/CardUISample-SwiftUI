//
//  ContentView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Favorites")
                .font(.largeTitle)
                .bold()
                .padding([.leading, .trailing, .top], 20)
            
            CardView(title: "Yahoo! JAPAN", urlString: "https://www.yahoo.co.jp/")
                .padding([.leading, .trailing], 5)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
