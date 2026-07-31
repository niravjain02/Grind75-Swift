import XCTest
@testable import Grind75Swift

final class SpiralMatrixTests: XCTestCase {
    func testStandardSquareExample() {
        XCTAssertEqual(
            SpiralMatrix.solve([[1, 2, 3], [4, 5, 6], [7, 8, 9]]),
            [1, 2, 3, 6, 9, 8, 7, 4, 5]
        )
    }

    func testStandardRectangularExample() {
        XCTAssertEqual(
            SpiralMatrix.solve([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]),
            [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]
        )
    }

    func testEmptyMatrix() {
        XCTAssertEqual(SpiralMatrix.solve([]), [])
    }

    func testEmptyRow() {
        XCTAssertEqual(SpiralMatrix.solve([[]]), [])
    }

    func testSingleValue() {
        XCTAssertEqual(SpiralMatrix.solve([[-1]]), [-1])
    }

    func testSingleRow() {
        XCTAssertEqual(SpiralMatrix.solve([[1, 2, 2, 3]]), [1, 2, 2, 3])
    }

    func testSingleColumn() {
        XCTAssertEqual(SpiralMatrix.solve([[1], [0], [-1]]), [1, 0, -1])
    }

    func testTwoByTwoMatrix() {
        XCTAssertEqual(SpiralMatrix.solve([[1, 2], [4, 3]]), [1, 2, 3, 4])
    }
}
