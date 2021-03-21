//
//  SafariView.swift
//  CardUISample-SwiftUI
//
//  Created by home on 2021/03/21.
//]

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    var urlString: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: URL(string: urlString)!)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}
