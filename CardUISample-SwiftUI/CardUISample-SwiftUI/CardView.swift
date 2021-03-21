//
//  CardView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//

import SwiftUI

struct CardView: View {
    var title: String
    var urlString: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            WebView(urlString: urlString)
                .disabled(true)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .shadow(radius: 4.0)
                Spacer()
            }
            .padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
