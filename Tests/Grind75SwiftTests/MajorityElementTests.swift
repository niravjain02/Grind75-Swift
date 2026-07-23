import XCTest
@testable import Grind75Swift

final class MajorityElementTests: XCTestCase {
    func testStandardThreeElementExample() {
        XCTAssertEqual(MajorityElement.solve([3, 2, 3]), 3)
    }

    func testStandardSevenElementExample() {
        XCTAssertEqual(MajorityElement.solve([2, 2, 1, 1, 1, 2, 2]), 2)
    }

    func testSingleElement() {
        XCTAssertEqual(MajorityElement.solve([7]), 7)
    }

    func testAllDuplicateValues() {
        XCTAssertEqual(MajorityElement.solve([4, 4, 4, 4]), 4)
    }

    func testNegativeMajority() {
        XCTAssertEqual(MajorityElement.solve([-1, 2, -1, -1, 3]), -1)
    }

    func testMajorityBecomesCandidateLate() {
        XCTAssertEqual(MajorityElement.solve([1, 2, 3, 2, 2, 2, 2]), 2)
    }

    func testMajoritySurvivesRepeatedCancellation() {
        XCTAssertEqual(MajorityElement.solve([5, 1, 5, 2, 5, 3, 5]), 5)
    }
}
