//copas    //
//  ResultScreen.swift
//  iZakat
//
//  Created by Muhammad Rifqi Syatria on 18.3.2025.
//

import SwiftUI


let backgroundGradient = LinearGradient(gradient: Gradient(colors: [.darkGradientBase, .lightGradientBase]), startPoint: UnitPoint(x: 0.5, y: 0.8), endPoint: UnitPoint(x: 0.5, y: 0.9))



struct SuccessResultScreen: View {
    
    @State var transitionScreen : Bool = false
    var body: some View {
        
        VStack{
            
            ZStack{
                
                if transitionScreen {
                    Circle()
                        .fill(backgroundGradient)
                        .frame(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height * 2)
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - UIScreen.main.bounds.height*0.9)
                        
                    
                    Image(.ombakAtas)
                        .transition(.move(edge: .trailing))
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 180, y: 700))
                    
                    Image(.ombakTengah)
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 180, y: 750))
                        .transition(.move(edge: .leading))
                    Image(.ombakBawah)
                        .frame(minWidth: 100)
                        .position(CGPoint(x: 180, y: 800))
                        .transition(.move(edge: .trailing))
                    
                    
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
                            .fontWeight(.regular)
                        Text("Rp. 250.000")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .frame(height:250)
                    .background(.backgroundTintGreen)
                    
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .overlay(
                        ZStack(alignment: .bottom) {
                            RoundedRectangle(cornerRadius: 20) // 👈 Keeps
                                .stroke(.backgroundTintGreen, lineWidth: 6)
                            
                            VStack {
                               
                                
                                Spacer()
                                Button {
                                    //                                    isNavigating = true
                                } label: {
                                    Text("Hitung Kembali")
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                                .buttonStyle(.borderedProminent)
                                .tint(.darkGreenButton)
                                .padding(.horizontal, 24)
                                .offset(y: 20)// 👈 Moves it outside container
                                
                            }
                        }
                    )
                    .shadow(color: Color.black.opacity(0.1),radius: 10)
                    .padding(24)
                    
                    
                    
                    //                    VStack{
                    //                        Image(.ombakAtas)
                    //                            .transition(.move(edge: .trailing))
                    //                            .frame(minWidth: 100)
                    //                            .position(CGPoint(x: 180, y: 680))
                    //
                    //                        Image(.ombakTengah)
                    //                            .frame(minWidth: 100)
                    //                            .position(CGPoint(x: 180, y: 460))
                    //                            .transition(.move(edge: .top))
                    //                        Image(.ombakBawah)
                    //                            .frame(minWidth: 100)
                    //                            .position(CGPoint(x: 180, y: 250))
                    //                            .transition(.move(edge: .trailing))
                    //
                    //
                    //                    }.transition(.move(edge: .trailing))
                    
                    
                    
                }
                
                //
                
                
                
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
            withAnimation(.interpolatingSpring(stiffness: 100, damping: 10)) {
                transitionScreen = true
            }
        }
        .background(.backgroundBaseGreen)
        
        
        
        
        
    }
    
    
}


#Preview {
    ResultScreen()
}
