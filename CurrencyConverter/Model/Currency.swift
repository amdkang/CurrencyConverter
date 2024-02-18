//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Amenda Kang on 2/16/24.
//

import Foundation

struct Currency {
    init(_ nam: String, _ abrv: String, _ exchRate: Float) { //  _ switchon: Bool
        name = nam
        abbrv = abrv
        rate = exchRate
//        switchOn = switchon
//        convertedAmt = 0
    }
    var name: String
    var rate: Float
    var abbrv: String
//    var switchOn: Bool
//    var convertedAmt: Float
}
