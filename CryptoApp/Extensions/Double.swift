//
//  Double.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

import Foundation

extension Double {
    
    ///Convers a double into a currency with 2-6 decimal places
    /// ```
    /// Convert 2345.67 to $2,345.67
    /// Convert 23.4567 to $23.4567
    /// Convert 0.234567 to $0.234567
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // <= this is the default
//        formatter.currencyCode = "usd" // <= this is to change the currency | default
//        formatter.currencyCode = "$" // <= this is to change symbol | default
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    ///Convers a double into a currency as a string with 2-6 decimal places
    /// ```
    /// Convert 2345.67 to "$2,345.67"
    /// Convert 23.4567 to "$23.4567"
    /// Convert 0.234567 to "$0.234567"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
}
