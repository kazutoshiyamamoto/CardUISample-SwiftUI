//
//  HeaderView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("My Favorites")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            Button(action: {
                print("設定ボタンが選択された")
            }) {
                Image(systemName: "gearshape")
                    .font(.system(size: 20))
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
