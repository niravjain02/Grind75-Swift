import XCTest
@testable import Grind75Swift

final class PermutationsTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            normalized(Permutations.solve([1, 2, 3])),
            normalized([
                [1, 2, 3],
                [1, 3, 2],
                [2, 1, 3],
                [2, 3, 1],
                [3, 1, 2],
                [3, 2, 1]
            ])
        )
    }

    func testTwoValues() {
        XCTAssertEqual(
            normalized(Permutations.solve([0, 1])),
            normalized([[0, 1], [1, 0]])
        )
    }

    func testSingleValue() {
        XCTAssertEqual(Permutations.solve([7]), [[7]])
    }

    func testNegativeValues() {
        XCTAssertEqual(
            normalized(Permutations.solve([-1, 0, 2])),
            normalized([
                [-1, 0, 2],
                [-1, 2, 0],
                [0, -1, 2],
                [0, 2, -1],
                [2, -1, 0],
                [2, 0, -1]
            ])
        )
    }

    func testEmptyInputOutsideConstraintsHasOneEmptyPermutation() {
        XCTAssertEqual(Permutations.solve([]), [[]])
    }

    func testEveryResultContainsEveryInputValueExactlyOnce() {
        let nums = [4, -3, 9, 0]
        let result = Permutations.solve(nums)

        XCTAssertEqual(result.count, 24)
        XCTAssertTrue(result.allSatisfy { $0.sorted() == nums.sorted() })
        XCTAssertEqual(Set(result.map(String.init(describing:))).count, 24)
    }

    private func normalized(_ values: [[Int]]) -> [[Int]] {
        values.sorted { lhs, rhs in
            lhs.lexicographicallyPrecedes(rhs)
        }
    }
}
