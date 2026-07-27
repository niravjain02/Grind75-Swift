import XCTest
@testable import Grind75Swift

final class NumberOfIslandsTests: XCTestCase {
    func testStandardSingleIslandExample() {
        let grid = characterGrid([
            "11110",
            "11010",
            "11000",
            "00000"
        ])

        XCTAssertEqual(NumberOfIslands.solve(grid), 1)
    }

    func testStandardThreeIslandExample() {
        let grid = characterGrid([
            "11000",
            "11000",
            "00100",
            "00011"
        ])

        XCTAssertEqual(NumberOfIslands.solve(grid), 3)
    }

    func testEmptyGrid() {
        XCTAssertEqual(NumberOfIslands.solve([]), 0)
    }

    func testEmptyRow() {
        XCTAssertEqual(NumberOfIslands.solve([[]]), 0)
    }

    func testSingleLandCell() {
        XCTAssertEqual(NumberOfIslands.solve([["1"]]), 1)
    }

    func testAllWater() {
        XCTAssertEqual(NumberOfIslands.solve(characterGrid(["000", "000"])), 0)
    }

    func testDiagonalLandCellsAreSeparateIslands() {
        XCTAssertEqual(NumberOfIslands.solve(characterGrid(["10", "01"])), 2)
    }

    func testDuplicateLandValuesInOneConnectedComponent() {
        XCTAssertEqual(NumberOfIslands.solve(characterGrid(["111", "111"])), 1)
    }

    func testInputGridIsNotModified() {
        let grid = characterGrid(["10", "01"])

        _ = NumberOfIslands.solve(grid)

        XCTAssertEqual(grid, characterGrid(["10", "01"]))
    }

    private func characterGrid(_ rows: [String]) -> [[Character]] {
        rows.map(Array.init)
    }
}
