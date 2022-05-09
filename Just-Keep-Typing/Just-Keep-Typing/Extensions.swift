//
//  Extensions.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/2/22.
//

import Foundation
import SwiftUI

extension Color {
    static let failBackground = Color("Fail-Background")
    static let successBackground = Color("Success-Background")
    static let icon = Color("Icon")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

//https://stackoverflow.com/questions/28332946/how-do-i-get-the-current-date-in-short-format-in-swift
extension Date {
    func string(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
