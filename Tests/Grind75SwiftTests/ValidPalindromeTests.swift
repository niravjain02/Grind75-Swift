import XCTest
@testable import Grind75Swift

final class ValidPalindromeTests: XCTestCase {
    func testStandardExample() {
        XCTAssertTrue(ValidPalindrome.solve("A man, a plan, a canal: Panama"))
    }

    func testNonPalindrome() {
        XCTAssertFalse(ValidPalindrome.solve("race a car"))
    }

    func testPunctuationOnlyIsPalindrome() {
        XCTAssertTrue(ValidPalindrome.solve(".,!"))
    }

    func testEmptyStringIsPalindrome() {
        XCTAssertTrue(ValidPalindrome.solve(""))
    }

    func testSingleCharacterIsPalindrome() {
        XCTAssertTrue(ValidPalindrome.solve("x"))
    }

    func testNumbersAndLetters() {
        XCTAssertTrue(ValidPalindrome.solve("1A2a1"))
    }

    func testDuplicateCharactersDoNotGuaranteePalindrome() {
        XCTAssertFalse(ValidPalindrome.solve("aabb"))
    }
}
