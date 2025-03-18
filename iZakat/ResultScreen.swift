//
//  ResultScreen.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 18.3.2025.
//

import SwiftUI

struct ResultScreen: View {
    var body: some View {
        
        ZStack{
            Circle()
                .fill(Color.colorNew)
                .frame(width: 900, height: 900)
                .position(x: UIScreen.main.bounds.width / 2, y: 30)
            RoundedRectangle(cornerRadius: 20).fill(Color.cyan).frame(width:300,height:300)
            ZStack{
                RoundedRectangle(cornerRadius: 20).fill(Color.green).frame(width:200,height:50)
                Text("Back")
            }.position(x:UIScreen.main.bounds.width / 2,y: 300)
            
            Text("Result Screen")
            
        }.ignoresSafeArea(.all)
        
    }
}


#Preview {
    ResultScreen()
}
