import XCTest
@testable import Grind75Swift

final class InsertIntervalTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            InsertInterval.solve([[1, 3], [6, 9]], [2, 5]),
            [[1, 5], [6, 9]]
        )
    }

    func testMergesMultipleIntervalsIncludingTouchingEndpoints() {
        XCTAssertEqual(
            InsertInterval.solve([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]),
            [[1, 2], [3, 10], [12, 16]]
        )
    }

    func testEmptyIntervals() {
        XCTAssertEqual(InsertInterval.solve([], [4, 8]), [[4, 8]])
    }

    func testInsertsBeforeAllIntervals() {
        XCTAssertEqual(InsertInterval.solve([[3, 5], [7, 9]], [0, 1]), [[0, 1], [3, 5], [7, 9]])
    }

    func testInsertsAfterAllIntervals() {
        XCTAssertEqual(InsertInterval.solve([[0, 1], [3, 5]], [7, 9]), [[0, 1], [3, 5], [7, 9]])
    }

    func testNewIntervalContainedByExistingInterval() {
        XCTAssertEqual(InsertInterval.solve([[1, 10]], [3, 5]), [[1, 10]])
    }

    func testNewIntervalContainsDuplicateEndpointIntervals() {
        XCTAssertEqual(InsertInterval.solve([[1, 2], [5, 5], [8, 10]], [2, 8]), [[1, 10]])
    }

    func testNegativeValuesOutsideLeetCodeConstraints() {
        XCTAssertEqual(InsertInterval.solve([[-10, -5], [0, 2]], [-6, 0]), [[-10, 2]])
    }
}
