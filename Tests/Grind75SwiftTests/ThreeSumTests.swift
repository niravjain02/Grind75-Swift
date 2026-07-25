import XCTest
@testable import Grind75Swift

final class ThreeSumTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            ThreeSum.solve([-1, 0, 1, 2, -1, -4]),
            [[-1, -1, 2], [-1, 0, 1]]
        )
    }

    func testNoTripletExample() {
        XCTAssertEqual(ThreeSum.solve([0, 1, 1]), [])
    }

    func testAllZeroDuplicateExample() {
        XCTAssertEqual(ThreeSum.solve([0, 0, 0]), [[0, 0, 0]])
    }

    func testEmptyArray() {
        XCTAssertEqual(ThreeSum.solve([]), [])
    }

    func testFewerThanThreeValues() {
        XCTAssertEqual(ThreeSum.solve([-1, 1]), [])
    }

    func testDuplicateValuesProduceOneTriplet() {
        XCTAssertEqual(ThreeSum.solve([-2, 0, 0, 2, 2]), [[-2, 0, 2]])
    }

    func testMultipleDistinctTriplets() {
        XCTAssertEqual(
            ThreeSum.solve([-4, -2, -1, 0, 1, 2, 3]),
            [[-4, 1, 3], [-2, -1, 3], [-2, 0, 2], [-1, 0, 1]]
        )
    }

    func testAllNegativeValuesHaveNoSolution() {
        XCTAssertEqual(ThreeSum.solve([-5, -4, -3, -2, -1]), [])
    }
}
