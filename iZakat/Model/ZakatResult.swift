//
//  ZakatResult.swift
//  iZakat
//
//  Created by Rizki Siraj on 24/03/25.
//

enum ZakatStatus: String {
    case wajib = "Wajib Zakat"
    case belumWajib = "Belum Wajib Zakat"
}

struct ZakatResult {
    var zakatStatus: ZakatStatus = .belumWajib
    var reason: String = ""
}
