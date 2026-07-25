import XCTest
@testable import Grind75Swift

final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
    func testStandardRepeatingPatternExample() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("abcabcbb"), 3)
    }

    func testStandardAllDuplicateExample() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("bbbbb"), 1)
    }

    func testStandardWindowShiftExample() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("pwwkew"), 3)
    }

    func testEmptyString() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve(""), 0)
    }

    func testSingleCharacter() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve(" "), 1)
    }

    func testDuplicateBeforeCurrentWindowDoesNotMoveStartBackward() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("abba"), 2)
    }

    func testOverlappingCandidateAfterDuplicate() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("dvdf"), 3)
    }

    func testUnicodeCharacters() {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("😀a😀bc"), 4)
    }
}
