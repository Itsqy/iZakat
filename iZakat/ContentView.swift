//
//  ContentView.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 16.3.2025.
//

import SwiftUI




struct ContentView: View {
    
    @State private var username: String = ""
    @State private var startPeriode: String = ""
    @State private var hasil: Int = 0
    
    
    var body: some View {
        VStack {
            Text("iZakat")
            ZStack{
                Image("bg1")
                Image("bg2")
                Text("Result")
                    .font(.largeTitle)
                
                
            }
            Label {
                Text("Gender")
            } icon: {
                Image(systemName: "figure.stand.dress.line.vertical.figure")
            }
            
        }
        .padding(.horizontal, 20)
    }
    
    
    
}

#Preview {
    ContentView()
}
