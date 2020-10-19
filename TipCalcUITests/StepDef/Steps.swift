//
//  Steps.swift
//  TipCalcUITests
//
//  Created by raviza on 14/10/20.
//
//

import Foundation
import XCTest

extension TipCalcUITestBase {
    
    func givenAppIsReady() {
        XCTAssertTrue(TipCalcScreen.totalBill.element.exists, "App is Ready")
    }
    
    func whenIEnterTotalBillAndTapOut(amount: String) {
        TipCalcScreen.totalBill.element.tap()
        TipCalcScreen.totalBill.element.typeText(amount)
        TipCalcScreen.totalBillLabel.element.tap()
    }
    
    func thenIShouldSeeTipCalculated() {
         XCTAssertEqual(TipCalcScreen.tip.element.value as! String, "$15.00", "Default Tip calculated")
        XCTAssertEqual(TipCalcScreen.total.element.value as! String, "$115.00")
    }
}
