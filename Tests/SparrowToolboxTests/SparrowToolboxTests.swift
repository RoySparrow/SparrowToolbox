import XCTest
@testable import SparrowToolbox

final class SparrowToolboxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SparrowToolbox().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
