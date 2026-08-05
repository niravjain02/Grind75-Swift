import XCTest
@testable import Grind75Swift

final class FindMedianFromDataStreamTests: XCTestCase {
    func testStandardExample() {
        let finder = MedianFinder()

        finder.addNum(1)
        finder.addNum(2)
        XCTAssertEqual(finder.findMedian(), 1.5)
        finder.addNum(3)
        XCTAssertEqual(finder.findMedian(), 2.0)
    }

    func testSingleNegativeValue() {
        let finder = MedianFinder()

        finder.addNum(-7)
        XCTAssertEqual(finder.findMedian(), -7.0)
    }

    func testNegativeValuesInUnsortedOrder() {
        let finder = MedianFinder()

        [-5, -1, -3, -2].forEach(finder.addNum)
        XCTAssertEqual(finder.findMedian(), -2.5)
    }

    func testDuplicateValues() {
        let finder = MedianFinder()

        [4, 4, 4, 4].forEach(finder.addNum)
        XCTAssertEqual(finder.findMedian(), 4.0)
    }

    func testAlternatingValuesRebalanceBothHeaps() {
        let finder = MedianFinder()
        let values = [10, 1, 9, 2, 8, 3, 7, 4, 6, 5]
        let expected = [10.0, 5.5, 9.0, 5.5, 8.0, 5.5, 7.0, 5.5, 6.0, 5.5]

        for (value, median) in zip(values, expected) {
            finder.addNum(value)
            XCTAssertEqual(finder.findMedian(), median)
        }
    }

    func testOppositeConstraintExtremes() {
        let finder = MedianFinder()

        finder.addNum(-100_000)
        finder.addNum(100_000)
        XCTAssertEqual(finder.findMedian(), 0.0)
    }

    func testEmptyFinderOutsideLeetCodeCallContractReturnsZero() {
        XCTAssertEqual(MedianFinder().findMedian(), 0.0)
    }
}
