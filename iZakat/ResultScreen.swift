//
//  ResultScreen.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 18.3.2025.
//

import SwiftUI


let backgroundGradient = LinearGradient(
    colors: [Color.yellow, Color.colorNew],
    startPoint: .trailing, endPoint: .leading)

struct ResultScreen: View {
    var body: some View {
        
        VStack{
            ZStack{
                //            bg circle
                Circle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height * 2)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - UIScreen.main.bounds.height*0.9)
                
                //        status wajib zakat
                VStack{
                    Text("WAJIB ZAKAT")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom,10)
                    Text("Zakat yang harus kamu bayar ")
                        .font(.caption)
                        .fontWeight(.bold)
                    Text("Rp. 250.000")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(width:UIScreen.main.bounds.width * 5/6,height:UIScreen.main.bounds.height * 1.4/5)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                
                //            title status
                Text("Apa Status Zakatmu? ")
                    .font(.caption)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                    .background(Color.green)
                    .cornerRadius(20)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height/2.8)
                
                HStack{
                    
                    VStack(alignment:.center){
                        Text("Nishab?")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .padding(.vertical,10)
                        Text("Nishab adalah  batas minimum kepemilikan harta yang wajib dizakati.untuk emas, nishabnya setara dengan 85 gram emas murni")
                            .font(.custom("",size: 8))
                            .frame(width: UIScreen.main.bounds.width/3,height: UIScreen.main.bounds.height * 1/10,
                                   alignment: .center)
                            .multilineTextAlignment(.center)
                            .padding([.horizontal,.bottom],10)
                        
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal,10)
                    .shadow(radius: 3)
                   
                    
                    
                    
                    
                    
                    
                }
                .padding(.horizontal,5)
                .position(x: UIScreen.main.bounds.width*1/2, y: UIScreen.main.bounds.height*8/10)
                
            }
        }
        .ignoresSafeArea(.all)
        
        
        
        
    }
}


#Preview {
    ResultScreen()
}
