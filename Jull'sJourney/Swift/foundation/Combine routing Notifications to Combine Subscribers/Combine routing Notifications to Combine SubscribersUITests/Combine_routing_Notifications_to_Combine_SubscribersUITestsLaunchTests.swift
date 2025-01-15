//
//  Combine_routing_Notifications_to_Combine_SubscribersUITestsLaunchTests.swift
//  Combine routing Notifications to Combine SubscribersUITests
//
//  Created by Julio Pramaitama on 03/10/24.
//

import XCTest

final class Combine_routing_Notifications_to_Combine_SubscribersUITestsLaunchTests: XCTestCase {

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
