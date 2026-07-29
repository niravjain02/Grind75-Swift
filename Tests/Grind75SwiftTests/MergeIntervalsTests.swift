import XCTest
@testable import Grind75Swift

final class MergeIntervalsTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            MergeIntervals.solve([[1, 3], [2, 6], [8, 10], [15, 18]]),
            [[1, 6], [8, 10], [15, 18]]
        )
    }

    func testTouchingIntervalsMerge() {
        XCTAssertEqual(MergeIntervals.solve([[1, 4], [4, 5]]), [[1, 5]])
    }

    func testUnsortedIntervals() {
        XCTAssertEqual(
            MergeIntervals.solve([[8, 10], [2, 6], [15, 18], [1, 3]]),
            [[1, 6], [8, 10], [15, 18]]
        )
    }

    func testContainedIntervalDoesNotShrinkMergedEnd() {
        XCTAssertEqual(MergeIntervals.solve([[1, 10], [2, 4], [3, 8]]), [[1, 10]])
    }

    func testDuplicateIntervals() {
        XCTAssertEqual(MergeIntervals.solve([[1, 3], [1, 3], [1, 3]]), [[1, 3]])
    }

    func testIntervalsWithSameStart() {
        XCTAssertEqual(
            MergeIntervals.solve([[2, 3], [2, 8], [2, 5], [10, 12]]),
            [[2, 8], [10, 12]]
        )
    }

    func testNegativeValuesOutsideConstraints() {
        XCTAssertEqual(
            MergeIntervals.solve([[-3, -1], [-10, -5], [-6, 0], [2, 4]]),
            [[-10, 0], [2, 4]]
        )
    }

    func testSingleInterval() {
        XCTAssertEqual(MergeIntervals.solve([[5, 7]]), [[5, 7]])
    }

    func testEmptyInputOutsideConstraints() {
        XCTAssertEqual(MergeIntervals.solve([]), [])
    }
}
