import XCTest
@testable import NetworkState

final class NetworkStateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NetworkState().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
