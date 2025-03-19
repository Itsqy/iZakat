//
//  JustifyText.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 19.3.2025.
//
import SwiftUI
import UIKit

struct JustifiedText : UIViewRepresentable {
    var text : String
    var font : UIFont
    var textColor : UIColor
    
    func makeUIView(context: Context) -> UITextView{
        let textView = UITextView()
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        textView.textAlignment = .justified
        textView.font = font
        textView.textColor = textColor
        textView.textContainer.lineBreakMode = .byWordWrapping
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
}

