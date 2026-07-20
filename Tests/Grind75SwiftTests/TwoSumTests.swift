import XCTest
@testable import Grind75Swift

final class TwoSumTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(TwoSum.solve([2, 7, 11, 15], target: 9), [0, 1])
    }

    func testPairInMiddle() {
        XCTAssertEqual(TwoSum.solve([3, 2, 4], target: 6), [1, 2])
    }

    func testDuplicateValues() {
        XCTAssertEqual(TwoSum.solve([3, 3], target: 6), [0, 1])
    }

    func testNegativeValues() {
        XCTAssertEqual(TwoSum.solve([-3, 4, 3, 90], target: 0), [0, 2])
    }

    func testNoSolutionReturnsEmptyArray() {
        XCTAssertEqual(TwoSum.solve([1, 2, 3], target: 10), [])
    }
}
