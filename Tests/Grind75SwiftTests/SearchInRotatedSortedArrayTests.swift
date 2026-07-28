import XCTest
@testable import Grind75Swift

final class SearchInRotatedSortedArrayTests: XCTestCase {
    func testStandardExampleFindsTarget() {
        XCTAssertEqual(
            SearchInRotatedSortedArray.solve([4, 5, 6, 7, 0, 1, 2], target: 0),
            4
        )
    }

    func testStandardExampleMissingTarget() {
        XCTAssertEqual(
            SearchInRotatedSortedArray.solve([4, 5, 6, 7, 0, 1, 2], target: 3),
            -1
        )
    }

    func testEmptyArrayOutsideLeetCodeConstraints() {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([], target: 1), -1)
    }

    func testSingleElementFound() {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([1], target: 1), 0)
    }

    func testSingleElementMissing() {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([1], target: 0), -1)
    }

    func testTwoElementsRotated() {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([3, 1], target: 1), 1)
    }

    func testArrayWithoutRotation() {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([-5, -2, 0, 4, 9], target: -2), 1)
    }

    func testNegativeTargetAfterPivot() {
        XCTAssertEqual(
            SearchInRotatedSortedArray.solve([0, 2, 5, -8, -4, -1], target: -4),
            4
        )
    }

    func testFindsValuesOnBothSidesOfPivot() {
        let nums = [6, 7, 8, 1, 2, 3, 4, 5]

        XCTAssertEqual(SearchInRotatedSortedArray.solve(nums, target: 7), 1)
        XCTAssertEqual(SearchInRotatedSortedArray.solve(nums, target: 4), 6)
    }
}
