import XCTest
@testable import Grind75Swift

final class RottingOrangesTests: XCTestCase {
    func testStandardExample() {
        let grid = [
            [2, 1, 1],
            [1, 1, 0],
            [0, 1, 1]
        ]

        XCTAssertEqual(RottingOranges.solve(grid), 4)
    }

    func testIsolatedFreshOrangeCannotRot() {
        let grid = [
            [2, 1, 1],
            [0, 1, 1],
            [1, 0, 1]
        ]

        XCTAssertEqual(RottingOranges.solve(grid), -1)
    }

    func testNoFreshOranges() {
        XCTAssertEqual(RottingOranges.solve([[0, 2]]), 0)
    }

    func testEmptyGrid() {
        XCTAssertEqual(RottingOranges.solve([]), 0)
    }

    func testEmptyRow() {
        XCTAssertEqual(RottingOranges.solve([[]]), 0)
    }

    func testSingleFreshOrangeWithoutRottenOrange() {
        XCTAssertEqual(RottingOranges.solve([[1]]), -1)
    }

    func testSingleRottenOrange() {
        XCTAssertEqual(RottingOranges.solve([[2]]), 0)
    }

    func testDuplicateRottenSourcesSpreadSimultaneously() {
        XCTAssertEqual(RottingOranges.solve([[2, 1, 1, 1, 2]]), 2)
    }

    func testInputGridIsNotModified() {
        let grid = [[2, 1], [1, 1]]

        _ = RottingOranges.solve(grid)

        XCTAssertEqual(grid, [[2, 1], [1, 1]])
    }
}
