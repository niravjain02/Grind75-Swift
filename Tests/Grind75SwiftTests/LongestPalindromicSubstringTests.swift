import XCTest
@testable import Grind75Swift

final class LongestPalindromicSubstringTests: XCTestCase {
    func testStandardOddLengthExample() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("babad"), "bab")
    }

    func testStandardEvenLengthExample() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("cbbd"), "bb")
    }

    func testEmptyString() {
        XCTAssertEqual(LongestPalindromicSubstring.solve(""), "")
    }

    func testSingleCharacter() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("a"), "a")
    }

    func testEntireStringIsPalindrome() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("racecar"), "racecar")
    }

    func testDuplicateCharacters() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("aaaa"), "aaaa")
    }

    func testNoPalindromeLongerThanOneCharacter() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("abc"), "a")
    }

    func testDigitsAndLetters() {
        XCTAssertEqual(LongestPalindromicSubstring.solve("ab1221cd"), "1221")
    }
}
