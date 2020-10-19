//
//  TipCalcUITestBase.swift
//  TipCalcUITests
//
//  Created by raviza on 14/10/20.
//
//

import Foundation
import XCTest

class TipCalcUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
    }
    
}
