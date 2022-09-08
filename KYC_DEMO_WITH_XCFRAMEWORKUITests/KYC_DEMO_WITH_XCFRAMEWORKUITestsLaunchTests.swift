//
//  KYC_DEMO_WITH_XCFRAMEWORKUITestsLaunchTests.swift
//  KYC_DEMO_WITH_XCFRAMEWORKUITests
//
//  Created by Onur GÜLER on 8.09.2022.
//

import XCTest

class KYC_DEMO_WITH_XCFRAMEWORKUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
