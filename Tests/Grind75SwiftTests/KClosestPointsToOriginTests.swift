import XCTest
@testable import Grind75Swift

final class KClosestPointsToOriginTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            normalized(KClosestPointsToOrigin.solve([[1, 3], [-2, 2]], 1)),
            [[-2, 2]]
        )
    }

    func testStandardTwoPointResultExample() {
        XCTAssertEqual(
            normalized(KClosestPointsToOrigin.solve([[3, 3], [5, -1], [-2, 4]], 2)),
            normalized([[3, 3], [-2, 4]])
        )
    }

    func testSinglePoint() {
        XCTAssertEqual(KClosestPointsToOrigin.solve([[0, 0]], 1), [[0, 0]])
    }

    func testKEqualsPointCount() {
        let points = [[2, 1], [-1, -1], [4, 0]]
        XCTAssertEqual(
            normalized(KClosestPointsToOrigin.solve(points, points.count)),
            normalized(points)
        )
    }

    func testDuplicatePointsArePreserved() {
        XCTAssertEqual(
            normalized(KClosestPointsToOrigin.solve([[1, 1], [1, 1], [5, 5]], 2)),
            [[1, 1], [1, 1]]
        )
    }

    func testNegativeCoordinatesUseSquaredDistance() {
        XCTAssertEqual(
            normalized(KClosestPointsToOrigin.solve([[-5, -5], [-1, -2], [3, -1]], 2)),
            normalized([[-1, -2], [3, -1]])
        )
    }

    func testEqualDistancesMayReturnEitherPoint() {
        let result = KClosestPointsToOrigin.solve([[1, 0], [0, 1], [2, 0]], 1)
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(squaredDistance(result[0]), 1)
    }

    func testZeroKOutsideLeetCodeConstraintsReturnsEmptyArray() {
        XCTAssertEqual(KClosestPointsToOrigin.solve([[1, 2]], 0), [])
    }

    func testEmptyPointsOutsideLeetCodeConstraints() {
        XCTAssertEqual(KClosestPointsToOrigin.solve([], 1), [])
    }

    private func normalized(_ points: [[Int]]) -> [[Int]] {
        points.sorted {
            $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]
        }
    }

    private func squaredDistance(_ point: [Int]) -> Int {
        point[0] * point[0] + point[1] * point[1]
    }
}
