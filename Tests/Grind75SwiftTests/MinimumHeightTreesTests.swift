import XCTest
@testable import Grind75Swift

final class MinimumHeightTreesTests: XCTestCase {
    func testStandardStarExample() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(
                4,
                edges: [[1, 0], [1, 2], [1, 3]]
            ),
            [1]
        )
    }

    func testStandardTwoCentersExample() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(
                6,
                edges: [[3, 0], [3, 1], [3, 2], [3, 4], [5, 4]]
            ),
            [3, 4]
        )
    }

    func testSingleNode() {
        XCTAssertEqual(MinimumHeightTrees.solve(1, edges: []), [0])
    }

    func testTwoNodesAreBothCenters() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(2, edges: [[0, 1]]),
            [0, 1]
        )
    }

    func testOddLengthPathHasOneCenter() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(
                5,
                edges: [[0, 1], [1, 2], [2, 3], [3, 4]]
            ),
            [2]
        )
    }

    func testEvenLengthPathHasTwoCenters() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(
                4,
                edges: [[2, 3], [1, 2], [0, 1]]
            ),
            [1, 2]
        )
    }

    func testUnorderedEdgesStillReturnSortedCenters() {
        XCTAssertEqual(
            MinimumHeightTrees.solve(
                8,
                edges: [
                    [6, 7], [2, 6], [0, 2], [2, 1],
                    [2, 3], [6, 4], [6, 5]
                ]
            ),
            [2, 6]
        )
    }

    func testZeroNodesOutsideConstraints() {
        XCTAssertEqual(MinimumHeightTrees.solve(0, edges: []), [])
    }
}
