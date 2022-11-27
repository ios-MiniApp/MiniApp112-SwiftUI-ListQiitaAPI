//
//  MiniApp112_mockstub02_QiitaAPIUITestsLaunchTests.swift
//  MiniApp112-mockstub02-QiitaAPIUITests
//
//  Created by 前田航汰 on 2022/11/27.
//

import XCTest

final class MiniApp112_mockstub02_QiitaAPIUITestsLaunchTests: XCTestCase {

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
