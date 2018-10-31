import Foundation
import XCTest
import LibD

public class LibDClassTests: XCTestCase {
	func testProperty() {
		XCTAssertEqual(LibDClass().property, 0)
	}
}