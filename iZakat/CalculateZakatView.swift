//
//  CalculateZakatView.swift
//  iZakat
//
//  Created by Rizki Siraj on 20/03/25.
//

import SwiftUI

struct CalculateZakatView: View {
    
    @State private var date = Date()
    @State private var savingTotal = 0
    @State private var isNavigating = false
    
    var body: some View {
        NavigationStack {
            ZStack() {
                VStack {
                    Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.lightGradientBase, .darkGradientBase]), startPoint: UnitPoint(x: 0.5, y: 0.7), endPoint: UnitPoint(x: 0.5, y: 0.4))
                        )
                        .frame(height: 450)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 0,
                                bottomLeadingRadius: 100,  bottomTrailingRadius: 100, topTrailingRadius: 0
                            )
                        )
                        .ignoresSafeArea()
                    Spacer()
                    Image("IlustrasiMasjid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .offset(y: 20)
                        
                }
                .ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Spacer()
                            .frame(height: 24)
                        Text("Tabunganku")
                            .fontWeight(.bold)
                        TextField("Rp10.000", value: $savingTotal, format: .number)
                            .padding(12)
                            .background(.gray.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Spacer()
                            .frame(height: 24)
                        Text("Start menabung?")
                            .fontWeight(.bold)
                        DatePicker(
                            "",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                        .labelsHidden()
                        Spacer()
                            .frame(height: 32)
                        
                    }
                    .padding()
                    .background(.baseGray)
                    .cornerRadius(20)
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
                                    calculateZakatStatus(saving: savingTotal, date: date)
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
                    Spacer()
                    Spacer()
                }
                
//                NavigationLink("", destination: calculateZakatStatus(saving: savingTotal, date: date) ? Text("Wajib Zakat") : Text("Belum Wajib Zakat"), isActive: $isNavigating)
                
                    
            }
            .background(.backgroundBaseGreen)
            .navigationTitle("IZakat")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
    
    func calculateZakatStatus(saving: Int, date: Date) -> ZakatResult {
        let nilaiEmas = 79815000
        let calendar = Calendar.current
        
        if(saving < nilaiEmas) {
            return ZakatResult(zakatStatus: .belumWajib, reason: "Belum mencapai nilai nisab yaitu \(nilaiEmas)")
        }
        let difference = calendar.dateComponents([.year], from: date, to: Date())
        if let years = difference.year, years < 1 {
            return ZakatResult(zakatStatus: .wajib, reason: "Belum mencapai batas haul")
        }
        
        var zakatValue = Int(Double(saving) * (2.5*100.0))
        return ZakatResult(zakatStatus: .wajib, reason: "\(zakatValue)")
    }
}

#Preview {
    CalculateZakatView()
}
