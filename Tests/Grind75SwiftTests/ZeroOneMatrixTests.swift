import XCTest
@testable import Grind75Swift

final class ZeroOneMatrixTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            ZeroOneMatrix.solve([[0, 0, 0], [0, 1, 0], [1, 1, 1]]),
            [[0, 0, 0], [0, 1, 0], [1, 2, 1]]
        )
    }

    func testAllZerosRemainZero() {
        XCTAssertEqual(
            ZeroOneMatrix.solve([[0, 0], [0, 0]]),
            [[0, 0], [0, 0]]
        )
    }

    func testSingleZeroCell() {
        XCTAssertEqual(ZeroOneMatrix.solve([[0]]), [[0]])
    }

    func testSingleRowWithDuplicateOneValues() {
        XCTAssertEqual(
            ZeroOneMatrix.solve([[1, 1, 0, 1, 1]]),
            [[2, 1, 0, 1, 2]]
        )
    }

    func testSingleColumn() {
        XCTAssertEqual(
            ZeroOneMatrix.solve([[1], [1], [0], [1]]),
            [[2], [1], [0], [1]]
        )
    }

    func testMultipleSourcesChooseNearestZero() {
        XCTAssertEqual(
            ZeroOneMatrix.solve([[0, 1, 1, 1], [1, 1, 1, 0]]),
            [[0, 1, 2, 1], [1, 2, 1, 0]]
        )
    }

    func testEmptyMatrixOutsideLeetCodeConstraints() {
        XCTAssertEqual(ZeroOneMatrix.solve([]), [])
    }

    func testEmptyRowOutsideLeetCodeConstraints() {
        XCTAssertEqual(ZeroOneMatrix.solve([[]]), [[]])
    }
}
