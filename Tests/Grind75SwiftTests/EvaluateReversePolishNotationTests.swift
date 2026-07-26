import XCTest
@testable import Grind75Swift

final class EvaluateReversePolishNotationTests: XCTestCase {
    func testStandardMultiplicationExample() {
        XCTAssertEqual(
            EvaluateReversePolishNotation.solve(["2", "1", "+", "3", "*"]),
            9
        )
    }

    func testStandardDivisionExample() {
        XCTAssertEqual(
            EvaluateReversePolishNotation.solve(["4", "13", "5", "/", "+"]),
            6
        )
    }

    func testStandardLongExample() {
        XCTAssertEqual(
            EvaluateReversePolishNotation.solve(
                ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
            ),
            22
        )
    }

    func testSingleNegativeValue() {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["-42"]), -42)
    }

    func testSubtractionPreservesOperandOrder() {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["3", "8", "-"]), -5)
    }

    func testDivisionPreservesOperandOrder() {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["20", "5", "/"]), 4)
    }

    func testNegativeDivisionTruncatesTowardZero() {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["7", "-3", "/"]), -2)
    }

    func testDuplicateValues() {
        XCTAssertEqual(
            EvaluateReversePolishNotation.solve(["5", "5", "+", "5", "-"]),
            5
        )
    }

    func testEmptyTokensOutsideLeetCodeConstraintsReturnsZero() {
        XCTAssertEqual(EvaluateReversePolishNotation.solve([]), 0)
    }
}
