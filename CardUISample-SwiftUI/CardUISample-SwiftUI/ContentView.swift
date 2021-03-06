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
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                HeaderView()
                    .padding([.leading, .trailing, .top], 35)
                
                ScrollView(.vertical) {
                    ForEach(favorites) { item in
                        CardView(favorite: item)
                            .frame(height: geometry.size.height / 1.2)
                            .onTapGesture {
                                selectedUrlString = item.urlString
                                isActive.toggle()
                            }
                    }
                }
                .padding(15)
                
                // TODO:if文使わないとURLが渡される前にSafariViewをインスタンス化しようとしてクラッシュする
                if selectedUrlString != "" {
                    EmptyView()
                        .fullScreenCover(isPresented: $isActive) {
                            SafariView(urlString: selectedUrlString)
                        }
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
