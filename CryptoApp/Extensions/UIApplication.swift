//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Marshall  on 7/25/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
