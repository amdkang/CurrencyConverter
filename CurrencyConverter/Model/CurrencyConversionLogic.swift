//
//  CurrencyConversionLogic.swift
//  CurrencyConverter
//
//  Created by Amenda Kang on 2/16/24.
//

import Foundation

struct CurrencyConversionLogic {
    
    var currencies = [ //USD conversion rates as of 2/16/24
        Currency("Pounds", "GBP", 0.79),
        Currency("Euros", "EUR", 0.93),
        Currency("Yen", "JPY", 150.18),
        Currency("Pesos", "MXN", 17.04)
    ]
    
    func getCurrencyName(_ currencyIndex : Int) -> String {
        return currencies[currencyIndex].name
    }
    
    func getCurrencyRate(_ currencyIndex : Int) -> Float {
        return currencies[currencyIndex].rate
    }
    
    mutating func convertUSD(_ usdAmount: Int, _ currencyIndex : Int) -> String {
            let rate = getCurrencyRate(currencyIndex)
            let amt = rate * Float(usdAmount)
            return String(format: "%.2f", amt)
    }
}
