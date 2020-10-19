//
//  TipCalcUITests.swift
//  TipCalcUITests
//
//  Created by raviza on 12/10/20.
//
//

import XCTest

class TipCalcUITests: TipCalcUITestBase {
    
    func testDefaultTip() throws {
        
        // Add Total Bill Amount
        let totalBill = app.textFields["totalBill"]
        totalBill.tap()
        totalBill.typeText("100.00")
        // Tap outside total bill text field
        app.staticTexts["Total Bill : "].tap()
        // Assert Default Tip Amount
        let tip =  app.textFields["tip"]
        XCTAssertEqual(tip.value as! String, "$15.00")
        // Assert Bill Amount including Tip
        let totalTextField = app.textFields["total"]
        XCTAssertEqual(totalTextField.value as! String, "$115.00")
        // let tippercentsliderSlider = app.sliders["tipPercentSlider"]
        //   tippercentsliderSlider.tap()
        
    }
    
}
