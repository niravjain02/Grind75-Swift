import XCTest
@testable import Grind75Swift

final class BinarySearchTests: XCTestCase {
    func testStandardExampleFindsTarget() {
        XCTAssertEqual(BinarySearch.solve([-1, 0, 3, 5, 9, 12], target: 9), 4)
    }

    func testStandardExampleMissingTarget() {
        XCTAssertEqual(BinarySearch.solve([-1, 0, 3, 5, 9, 12], target: 2), -1)
    }

    func testEmptyArray() {
        XCTAssertEqual(BinarySearch.solve([], target: 1), -1)
    }

    func testSingleElementFound() {
        XCTAssertEqual(BinarySearch.solve([5], target: 5), 0)
    }

    func testSingleElementMissing() {
        XCTAssertEqual(BinarySearch.solve([5], target: -5), -1)
    }

    func testFindsFirstAndLastElements() {
        XCTAssertEqual(BinarySearch.solve([-10, -3, 0, 8, 20], target: -10), 0)
        XCTAssertEqual(BinarySearch.solve([-10, -3, 0, 8, 20], target: 20), 4)
    }

    func testDuplicateValuesMayReturnAnyMatchingIndex() {
        let nums = [-2, 0, 0, 0, 7]
        let index = BinarySearch.solve(nums, target: 0)

        XCTAssertTrue(1...3 ~= index)
        XCTAssertEqual(nums[index], 0)
    }

    func testNegativeTarget() {
        XCTAssertEqual(BinarySearch.solve([-9, -4, -1, 3], target: -4), 1)
    }
}
