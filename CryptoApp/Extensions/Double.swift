//
//  Double.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

import Foundation

extension Double {
    
    
    ///Converts a double into a currency with 2 decimal places
    /// ```
    /// Convert 2345.67 to $2,345.67
    /// Convert 23.4567 to $23.45
    /// Convert 0.234567 to $0.23
    /// ```
    private var currencyFormatter2: NumberFormatter {
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
    
    ///Converts a double into a currency as a string with 2decimal places
    /// ```
    /// Convert 2345.67 to "$2,345.67"
    /// Convert 23.4567 to "$23.46"
    /// Convert 0.234567 to "$0.23"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    ///Converts a double into a currency with 2-6 decimal places
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
    
    ///Converts a double into a currency as a string with 2-6 decimal places
    /// ```
    /// Convert 2345.67 to "$2,345.67"
    /// Convert 23.4567 to "$23.4567"
    /// Convert 0.234567 to "$0.234567"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    ///Converts a double into string representation with 2 decimal places
    /// ```
    /// Convert 1.2345 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    ///Converts a double into string representation with 2 decimal places and a % symbol
    /// ```
    /// Convert 1.2345 to "1.23%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
