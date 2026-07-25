import XCTest
@testable import Grind75Swift

final class MaximumSubarrayTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(MaximumSubarray.solve([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
    }

    func testSingleElement() {
        XCTAssertEqual(MaximumSubarray.solve([1]), 1)
    }

    func testStandardPositiveRunExample() {
        XCTAssertEqual(MaximumSubarray.solve([5, 4, -1, 7, 8]), 23)
    }

    func testAllNegativeValuesReturnsLargestElement() {
        XCTAssertEqual(MaximumSubarray.solve([-8, -3, -6, -2, -5, -4]), -2)
    }

    func testDuplicateValuesContributeToBestRun() {
        XCTAssertEqual(MaximumSubarray.solve([2, -1, 2, -1, 2]), 4)
    }

    func testBestSubarrayAtBeginning() {
        XCTAssertEqual(MaximumSubarray.solve([4, 3, -10, 1, 2]), 7)
    }

    func testBestSubarrayAtEnd() {
        XCTAssertEqual(MaximumSubarray.solve([-10, -2, 3, 4]), 7)
    }

    func testEmptyArrayOutsideLeetCodeConstraintsReturnsZero() {
        XCTAssertEqual(MaximumSubarray.solve([]), 0)
    }
}
