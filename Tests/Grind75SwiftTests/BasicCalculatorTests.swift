import XCTest
@testable import Grind75Swift

final class BasicCalculatorTests: XCTestCase {
    func testStandardAdditionAndSubtractionExample() {
        XCTAssertEqual(BasicCalculator.solve("1 + 1"), 2)
    }

    func testStandardExpressionWithSpaces() {
        XCTAssertEqual(BasicCalculator.solve(" 2-1 + 2 "), 3)
    }

    func testStandardNestedParenthesesExample() {
        XCTAssertEqual(BasicCalculator.solve("(1+(4+5+2)-3)+(6+8)"), 23)
    }

    func testUnaryNegativeNumber() {
        XCTAssertEqual(BasicCalculator.solve("-2 + 1"), -1)
    }

    func testUnaryNegativeParentheses() {
        XCTAssertEqual(BasicCalculator.solve("-(3 + (4 + 5))"), -12)
    }

    func testSubtractsNegativeNestedValue() {
        XCTAssertEqual(BasicCalculator.solve("1-(-2)"), 3)
    }

    func testMultiDigitAndZeroValues() {
        XCTAssertEqual(BasicCalculator.solve("100-(20+30)+0"), 50)
    }

    func testMinimalExpression() {
        XCTAssertEqual(BasicCalculator.solve("7"), 7)
    }

    func testEmptyExpressionOutsideLeetCodeConstraintsReturnsZero() {
        XCTAssertEqual(BasicCalculator.solve(""), 0)
    }
}
