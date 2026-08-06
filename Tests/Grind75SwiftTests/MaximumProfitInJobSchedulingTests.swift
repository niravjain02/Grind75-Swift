import XCTest
@testable import Grind75Swift

final class MaximumProfitInJobSchedulingTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1, 2, 3, 3],
                endTime: [3, 4, 5, 6],
                profit: [50, 10, 40, 70]
            ),
            120
        )
    }

    func testSecondStandardExample() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1, 2, 3, 4, 6],
                endTime: [3, 5, 10, 6, 9],
                profit: [20, 20, 100, 70, 60]
            ),
            150
        )
    }

    func testTouchingEndpointsDoNotOverlap() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1, 3, 5],
                endTime: [3, 5, 7],
                profit: [10, 20, 30]
            ),
            60
        )
    }

    func testDuplicateTimesChooseMostProfitableJob() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1, 1, 3],
                endTime: [3, 3, 4],
                profit: [10, 50, 20]
            ),
            70
        )
    }

    func testLongJobCanBeatSeveralShortJobs() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1, 1, 2, 3],
                endTime: [4, 2, 3, 4],
                profit: [100, 20, 30, 40]
            ),
            100
        )
    }

    func testSingleJob() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [5],
                endTime: [9],
                profit: [42]
            ),
            42
        )
    }

    func testEmptyInputOutsideLeetCodeConstraints() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [],
                endTime: [],
                profit: []
            ),
            0
        )
    }

    func testMismatchedInputOutsideLeetCodeConstraintsReturnsZero() {
        XCTAssertEqual(
            MaximumProfitInJobScheduling.solve(
                startTime: [1],
                endTime: [],
                profit: [10]
            ),
            0
        )
    }
}
