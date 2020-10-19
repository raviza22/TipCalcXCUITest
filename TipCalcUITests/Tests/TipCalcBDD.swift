//
//  TipCalcUITestBDD.swift
//  TipCalcUITests
//
//  Created by raviza on 14/10/20.
//
//

import Foundation
import XCTest

class TipCalcBDD: TipCalcUITestBase {
    
    func testDefaultTipBDDStyle() {
        givenAppIsReady()
        whenIEnterTotalBillAndTapOut(amount: "100.00")
        thenIShouldSeeTipCalculated()
    }
}
