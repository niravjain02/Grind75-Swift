import XCTest
@testable import Grind75Swift

final class LongestPalindromeTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(LongestPalindrome.solve("abccccdd"), 7)
    }

    func testSingleCharacter() {
        XCTAssertEqual(LongestPalindrome.solve("a"), 1)
    }

    func testAllCharactersCanBeUsed() {
        XCTAssertEqual(LongestPalindrome.solve("aabbcc"), 6)
    }

    func testSeveralOddCountsAllowOneCenter() {
        XCTAssertEqual(LongestPalindrome.solve("aaabbbcc"), 7)
    }

    func testDuplicatePair() {
        XCTAssertEqual(LongestPalindrome.solve("bb"), 2)
    }

    func testCharactersAreCaseSensitive() {
        XCTAssertEqual(LongestPalindrome.solve("Aa"), 1)
        XCTAssertEqual(LongestPalindrome.solve("AaA"), 3)
    }

    func testEmptyString() {
        XCTAssertEqual(LongestPalindrome.solve(""), 0)
    }
}
