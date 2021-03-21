//
//  CardView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import SwiftUI

struct CardView: View {
    var favorite: Favorite
    
    var body: some View {
        ZStack(alignment: .leading) {
            WebView(urlString: favorite.urlString)
                .disabled(true)
            LinearGradient(
                gradient: Gradient(colors: [.clear, Color.black.opacity(0.2)]),
                startPoint: .bottom,
                endPoint: .top
            )
            
            VStack {
                Text(favorite.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .shadow(radius: 4.0)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(30)
        .padding()
        .shadow(radius: 10)
        .frame(height: 400)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(favorite: favorites[0])
    }
}
