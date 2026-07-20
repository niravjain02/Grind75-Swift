import XCTest
@testable import Grind75Swift

final class ValidParenthesesTests: XCTestCase {
    func testStandardExample() {
        XCTAssertTrue(ValidParentheses.solve("()"))
    }

    func testMultipleBracketTypes() {
        XCTAssertTrue(ValidParentheses.solve("()[]{}"))
    }

    func testNestedBrackets() {
        XCTAssertTrue(ValidParentheses.solve("{[()]}"))
    }

    func testMismatchedBrackets() {
        XCTAssertFalse(ValidParentheses.solve("(]"))
    }

    func testClosingBracketWithoutOpeningBracket() {
        XCTAssertFalse(ValidParentheses.solve("]"))
    }

    func testUnclosedOpeningBracket() {
        XCTAssertFalse(ValidParentheses.solve("("))
    }

    func testIncorrectlyNestedBrackets() {
        XCTAssertFalse(ValidParentheses.solve("([)]"))
    }

    func testEmptyString() {
        XCTAssertTrue(ValidParentheses.solve(""))
    }
}
