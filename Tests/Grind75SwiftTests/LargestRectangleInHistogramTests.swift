import XCTest
@testable import Grind75Swift

final class LargestRectangleInHistogramTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([2, 1, 5, 6, 2, 3]), 10)
    }

    func testSecondStandardExample() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([2, 4]), 4)
    }

    func testEmptyAndMinimalInputs() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([]), 0)
        XCTAssertEqual(LargestRectangleInHistogram.solve([7]), 7)
        XCTAssertEqual(LargestRectangleInHistogram.solve([0]), 0)
    }

    func testIncreasingAndDecreasingHeights() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([1, 2, 3, 4]), 6)
        XCTAssertEqual(LargestRectangleInHistogram.solve([4, 3, 2, 1]), 6)
    }

    func testDuplicatePlateau() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([3, 3, 3, 3]), 12)
    }

    func testZeroSeparatesRectangles() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([2, 0, 2]), 2)
    }

    func testShortestBarSpansWholeHistogram() {
        XCTAssertEqual(LargestRectangleInHistogram.solve([5, 1, 5]), 5)
    }
}
