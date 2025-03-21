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
                            LinearGradient(gradient: Gradient(colors: [.lightGradientBase, .darkGradientBase]), startPoint: UnitPoint(x: 0.5, y: 0), endPoint: UnitPoint(x: 0.5, y: 0.7))
                        )
                        .frame(height: 500)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 0,
                                bottomLeadingRadius: 100,  bottomTrailingRadius: 100, topTrailingRadius: 0
                            )
                        )
                        .ignoresSafeArea()
                    Spacer()
                }
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
                                isNavigating = true
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
                
                NavigationLink("", destination: calculateZakatStatus(saving: savingTotal, date: date) ? Text("Wajib Zakat") : Text("Belum Wajib Zakat"), isActive: $isNavigating)
            }
            .background(.backgroundBaseGreen)
        }
        
        
    }
}

func calculateZakatStatus(saving: Int, date: Date) -> Bool {
    let nilaiEmas = 79815000
    let calendar = Calendar.current
    
    if(saving < nilaiEmas) {
        return false
    }
    let difference = calendar.dateComponents([.year], from: date, to: Date())
    if let years = difference.year, years < 1 {
        print(years)
        return false
    }
    
    return true
}

#Preview {
    CalculateZakatView()
}
