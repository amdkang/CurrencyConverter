//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Amenda Kang on 2/16/24.
//

import Foundation

struct Currency {
    init(_ nam: String, _ abrv: String, _ exchRate: Float) {
        name = nam
        abbrv = abrv
        rate = exchRate
    }
    var name: String
    var rate: Float
    var abbrv: String
}
