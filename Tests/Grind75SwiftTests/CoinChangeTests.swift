import XCTest
@testable import Grind75Swift

final class CoinChangeTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(CoinChange.solve([1, 2, 5], amount: 11), 3)
    }

    func testImpossibleAmount() {
        XCTAssertEqual(CoinChange.solve([2], amount: 3), -1)
    }

    func testZeroAmount() {
        XCTAssertEqual(CoinChange.solve([1], amount: 0), 0)
    }

    func testSingleCoinExactAmount() {
        XCTAssertEqual(CoinChange.solve([7], amount: 7), 1)
    }

    func testGreedyChoiceWouldBeSuboptimal() {
        XCTAssertEqual(CoinChange.solve([1, 3, 4], amount: 6), 2)
    }

    func testDuplicateDenominations() {
        XCTAssertEqual(CoinChange.solve([1, 2, 2, 5], amount: 11), 3)
    }

    func testEmptyCoinsCannotMakePositiveAmount() {
        XCTAssertEqual(CoinChange.solve([], amount: 4), -1)
    }

    func testCoinLargerThanAmount() {
        XCTAssertEqual(CoinChange.solve([5, 10], amount: 3), -1)
    }

    func testNonpositiveCoinsOutsideLeetCodeConstraintsAreIgnored() {
        XCTAssertEqual(CoinChange.solve([-1, 0, 2], amount: 4), 2)
    }

    func testNegativeAmountOutsideLeetCodeConstraints() {
        XCTAssertEqual(CoinChange.solve([1, 2], amount: -1), -1)
    }
}
