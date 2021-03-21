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
                .padding([.leading, .trailing, .top], 30)
            
            List(favorites) { item in
                CardView(favorite: item)
                    .padding([.leading, .trailing], 5)
            }
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
