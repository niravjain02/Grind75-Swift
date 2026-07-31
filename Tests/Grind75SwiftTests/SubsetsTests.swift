import XCTest
@testable import Grind75Swift

final class SubsetsTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            normalized(Subsets.solve([1, 2, 3])),
            normalized([
                [],
                [1],
                [2],
                [1, 2],
                [3],
                [1, 3],
                [2, 3],
                [1, 2, 3]
            ])
        )
    }

    func testEmptyInputHasOneEmptySubset() {
        XCTAssertEqual(Subsets.solve([]), [[]])
    }

    func testSingleValue() {
        XCTAssertEqual(normalized(Subsets.solve([7])), normalized([[], [7]]))
    }

    func testTwoValues() {
        XCTAssertEqual(
            normalized(Subsets.solve([0, 1])),
            normalized([[], [0], [1], [0, 1]])
        )
    }

    func testNegativeValuesAndZero() {
        XCTAssertEqual(
            normalized(Subsets.solve([-1, 0])),
            normalized([[], [-1], [0], [-1, 0]])
        )
    }

    func testEverySubsetIsUniqueAndCountIsPowerOfTwo() {
        let result = Subsets.solve([4, -3, 9, 0])

        XCTAssertEqual(result.count, 16)
        XCTAssertEqual(Set(result.map(String.init(describing:))).count, 16)
    }

    private func normalized(_ values: [[Int]]) -> [[Int]] {
        values.sorted { lhs, rhs in
            lhs.lexicographicallyPrecedes(rhs)
        }
    }
}
