import XCTest
@testable import Grind75Swift

final class FloodFillTests: XCTestCase {
    func testStandardExample() {
        let image = [
            [1, 1, 1],
            [1, 1, 0],
            [1, 0, 1]
        ]

        XCTAssertEqual(
            FloodFill.solve(image, startRow: 1, startColumn: 1, newColor: 2),
            [
                [2, 2, 2],
                [2, 2, 0],
                [2, 0, 1]
            ]
        )
    }

    func testNewColorMatchesOriginalColor() {
        let image = [[0, 0], [0, 0]]

        XCTAssertEqual(
            FloodFill.solve(image, startRow: 0, startColumn: 0, newColor: 0),
            image
        )
    }

    func testSingleCell() {
        XCTAssertEqual(
            FloodFill.solve([[1]], startRow: 0, startColumn: 0, newColor: 3),
            [[3]]
        )
    }

    func testDiagonalCellsAreNotConnected() {
        let image = [[1, 0], [0, 1]]

        XCTAssertEqual(
            FloodFill.solve(image, startRow: 0, startColumn: 0, newColor: 2),
            [[2, 0], [0, 1]]
        )
    }

    func testOnlyStartingComponentChanges() {
        let image = [
            [1, 1, 0, 1],
            [1, 0, 0, 1],
            [0, 0, 1, 1]
        ]

        XCTAssertEqual(
            FloodFill.solve(image, startRow: 0, startColumn: 0, newColor: 9),
            [
                [9, 9, 0, 1],
                [9, 0, 0, 1],
                [0, 0, 1, 1]
            ]
        )
    }

    func testEmptyImageIsReturnedUnchanged() {
        XCTAssertEqual(
            FloodFill.solve([], startRow: 0, startColumn: 0, newColor: 1),
            []
        )
    }

    func testInvalidStartIsReturnedUnchanged() {
        let image = [[1, 1]]

        XCTAssertEqual(
            FloodFill.solve(image, startRow: 2, startColumn: 0, newColor: 3),
            image
        )
    }
}
