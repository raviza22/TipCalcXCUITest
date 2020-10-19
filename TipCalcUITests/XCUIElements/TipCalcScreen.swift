//
//  TipCalcScreen.swift
//  TipCalcUITests
//
//  Created by raviza on 14/10/20.
//
//

import Foundation
import XCTest

enum TipCalcScreen : String {
    
    case totalBill = "totalBill"
    case tip = "tip"
    case total = "total"
    case totalBillLabel = "Total Bill : "
    case tipPercentSlider = "tipPercentSlider"
    
    var element : XCUIElement {
        switch self {
        case .totalBill, .tip, .total:
            return XCUIApplication().textFields[self.rawValue]
        case .totalBillLabel:
            return XCUIApplication().staticTexts[self.rawValue]
        case .tipPercentSlider:
            return XCUIApplication().sliders[self.rawValue]
        }
    }
}
