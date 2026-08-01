import XCTest
@testable import Grind75Swift

final class UniquePathsTests: XCTestCase {
    func testStandardWideGridExample() {
        XCTAssertEqual(UniquePaths.solve(3, 7), 28)
    }

    func testStandardSmallGridExample() {
        XCTAssertEqual(UniquePaths.solve(3, 2), 3)
    }

    func testSingleCellHasOnePath() {
        XCTAssertEqual(UniquePaths.solve(1, 1), 1)
    }

    func testSingleRowHasOnePath() {
        XCTAssertEqual(UniquePaths.solve(1, 8), 1)
    }

    func testSingleColumnHasOnePath() {
        XCTAssertEqual(UniquePaths.solve(9, 1), 1)
    }

    func testSquareGrid() {
        XCTAssertEqual(UniquePaths.solve(4, 4), 20)
    }

    func testSwappingDimensionsDoesNotChangeResult() {
        XCTAssertEqual(UniquePaths.solve(7, 3), UniquePaths.solve(3, 7))
    }

    func testNonpositiveDimensionsOutsideLeetCodeConstraints() {
        XCTAssertEqual(UniquePaths.solve(0, 4), 0)
        XCTAssertEqual(UniquePaths.solve(4, 0), 0)
        XCTAssertEqual(UniquePaths.solve(-1, 3), 0)
    }
}
