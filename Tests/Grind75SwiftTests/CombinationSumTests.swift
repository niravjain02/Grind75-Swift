import XCTest
@testable import Grind75Swift

final class CombinationSumTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 3, 6, 7], target: 7)),
            normalized([[2, 2, 3], [7]])
        )
    }

    func testSecondStandardExample() {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 3, 5], target: 8)),
            normalized([[2, 2, 2, 2], [2, 3, 3], [3, 5]])
        )
    }

    func testNoCombination() {
        XCTAssertEqual(CombinationSum.solve([2], target: 1), [])
    }

    func testEmptyCandidates() {
        XCTAssertEqual(CombinationSum.solve([], target: 7), [])
    }

    func testSingleCandidateCanBeReused() {
        XCTAssertEqual(CombinationSum.solve([3], target: 9), [[3, 3, 3]])
    }

    func testCandidateEqualToTarget() {
        XCTAssertEqual(CombinationSum.solve([8], target: 8), [[8]])
    }

    func testUnsortedCandidates() {
        XCTAssertEqual(
            normalized(CombinationSum.solve([7, 3, 2, 6], target: 7)),
            normalized([[2, 2, 3], [7]])
        )
    }

    func testDuplicateCandidatesDoNotDuplicateResultsOutsideConstraints() {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 2, 3], target: 7)),
            normalized([[2, 2, 3]])
        )
    }

    func testNonpositiveCandidatesAreIgnoredOutsideConstraints() {
        XCTAssertEqual(CombinationSum.solve([-2, 0, 2], target: 4), [[2, 2]])
    }

    func testZeroTargetHasOneEmptyCombinationOutsideConstraints() {
        XCTAssertEqual(CombinationSum.solve([2, 3], target: 0), [[]])
    }

    private func normalized(_ combinations: [[Int]]) -> [[Int]] {
        combinations
            .map { $0.sorted() }
            .sorted { lhs, rhs in
                lhs.lexicographicallyPrecedes(rhs)
            }
    }
}
