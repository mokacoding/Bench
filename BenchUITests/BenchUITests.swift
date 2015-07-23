import Foundation
import XCTest

class BenchUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    /**
     *  When I tap the "say hello button", I see a greetings alert.
     */
    func testSayHello() {
        let app = XCUIApplication()
        app.buttons["say hello"].tap()
        app.alerts["Hello"].collectionViews.buttons["Dismiss"].tap()
    }

    /**
     *  When I tap the "show elements" button, I see a list of elements.
     */
    func testShowElements() {
        let app = XCUIApplication()
        app.buttons["show elements"].tap()

        XCTAssertEqual(app.tables.count, 1)

        let table = app.tables.elementBoundByIndex(0)
        let expectedNumberOfElements: UInt = 118
        XCTAssertEqual(table.cells.count, expectedNumberOfElements)
    }

}
