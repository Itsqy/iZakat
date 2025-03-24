//copas    //
//  ResultScreen.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 18.3.2025.
//

import SwiftUI


let backgroundGradient = LinearGradient(gradient: Gradient(colors: [.darkGradientBase, .lightGradientBase]), startPoint: UnitPoint(x: 0.5, y: 0.8), endPoint: UnitPoint(x: 0.5, y: 0.9))



struct ResultScreen: View {
    
    @State var animatedCard : Bool = false
    var body: some View {
        
        VStack{
            
            ZStack{
                
                if animatedCard {
                    Circle()
                        .fill(backgroundGradient)
                        .frame(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height * 2)
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - UIScreen.main.bounds.height*0.9)
                        .transition(.move(edge: .top))
                    
                    Image("LogoApp")
                        .position(CGPoint(x: 200, y: 280))
                    
                    
                    
                    VStack(alignment: .center){
                        Text("WAJIB ZAKAT")
                            .frame(minWidth: 0, maxWidth: .infinity)
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
                    .frame(height:300)
                    .background(Color.white)
                    
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .transition(.move(edge : .leading))
                    .overlay(
                        ZStack(alignment: .bottom) {
                            RoundedRectangle(cornerRadius: 20) // 👈 Keeps
                                .stroke(Color.white, lineWidth: 6)
                            
                            VStack {
                                Text("Apa Status Zakatmu?")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 32)
                                    .background(.greenFootnote)
                                    .cornerRadius(12)
                                    .offset(y:-20)
                                
                                Spacer()
                                Button {
                                    //                                    isNavigating = true
                                } label: {
                                    Text("Hitung")
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                }
                                .buttonStyle(.borderedProminent)
                                .tint(.darkGreenButton)
                                .padding(.horizontal, 24)
                                .offset(y: 20)// 👈 Moves it outside container
                            }
                        }
                    )
                    .shadow(color: Color.black.opacity(0.1),radius: 10)
                    .padding(24)
                    
                    
                    
                    
                    
                    
                    
                }
                
                //
                
                VStack{
                    Image(.ombakAtas)
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 200, y: 800))
                    Image(.ombakTengah)
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 200, y: 540))
                    Image(.ombakBawah)
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 200, y: 280))
                    
                    
                }
                
                HStack{
                    
                    VStack(alignment:.center){
                        Text("Nishab?")
                            .font(.footnote)
                            .fontWeight(.bold)
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
                    
                    VStack(alignment:.center){
                        Text("Haul?")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.vertical,10)
                        Text("Haul adalah batas waktu yang menentukan apakah harta yang kita miliki sudah mencapai satu tahun kepemilikan dalam kalender Hijriyah, yang merupakan salah satu syarat agar sebuah harta diwajibkan untuk dizakati. Jika harta tersebut telah mencapai nishab dan haul, maka wajib bagi pemilik harta untuk mengeluarkan zakatnya.")
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
        .onAppear() {
            withAnimation(.interpolatingSpring(stiffness: 70, damping: 10)) {
                animatedCard = true
            }
        }
        .background(.backgroundBaseGreen)
        
        
        
        
        
    }
    
    
}


#Preview {
    ResultScreen()
}
