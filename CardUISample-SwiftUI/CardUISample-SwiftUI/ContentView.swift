//
//  ContentView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    @State var selectedUrlString: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView()
                .padding([.leading, .trailing, .top], 35)
            
            List(favorites) { item in
                CardView(favorite: item)
                    .onTapGesture {
                        selectedUrlString = item.urlString
                        isActive.toggle()
                    }
                    .padding([.leading, .trailing], 5)
            }
            
            // TODO:if文使わないとURLが渡される前にSafariViewをインスタンス化しようとしてクラッシュする
            if selectedUrlString != "" {
                EmptyView()
                    .sheet(isPresented: $isActive) {
                        SafariView(urlString: selectedUrlString)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
