import XCTest
@testable import Gardenize

final class GardenizeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Gardenize().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
