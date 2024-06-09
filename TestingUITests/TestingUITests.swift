//
//  TestingUITests.swift
//  TestingUITests
//
//  Created by Gagana Ananda on 6/9/24.
//

import XCTest

final class TestingUITests: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

       
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
                        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
       
        let usernameTextField = app.textFields["Username"]
                XCTAssertTrue(usernameTextField.waitForExistence(timeout: 5))
                usernameTextField.tap()
                usernameTextField.typeText("Gagana")

                let passwordTextField = app.secureTextFields["Password"]
                XCTAssertTrue(passwordTextField.waitForExistence(timeout: 5))
                passwordTextField.tap()
                passwordTextField.typeText("Ananda")

                let loginButton = app.buttons["Login"]
                XCTAssertTrue(loginButton.waitForExistence(timeout: 5))
                loginButton.tap()

                let welcomeLabel = app.staticTexts["Welcome Gagana"]
                XCTAssertTrue(welcomeLabel.waitForExistence(timeout: 5))
            }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
