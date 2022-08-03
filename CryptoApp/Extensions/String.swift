//
//  String.swift
//  CryptoApp
//
//  Created by Marshall  on 8/3/22.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
