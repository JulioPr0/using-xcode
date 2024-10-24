//
//  Message_passing_between_controllers_via_performSegueUITestsLaunchTests.swift
//  Message passing between controllers via performSegueUITests
//
//  Created by Julio Pramaitama on 24/10/24.
//

import XCTest

final class Message_passing_between_controllers_via_performSegueUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
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
