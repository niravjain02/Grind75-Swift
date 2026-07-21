import XCTest
@testable import Grind75Swift

final class ValidAnagramTests: XCTestCase {
    func testStandardExample() {
        XCTAssertTrue(ValidAnagram.solve("anagram", "nagaram"))
    }

    func testDifferentCharacters() {
        XCTAssertFalse(ValidAnagram.solve("rat", "car"))
    }

    func testDifferentLengths() {
        XCTAssertFalse(ValidAnagram.solve("ab", "a"))
    }

    func testDuplicateCharacterFrequenciesMatch() {
        XCTAssertTrue(ValidAnagram.solve("aabbcc", "abcabc"))
    }

    func testDuplicateCharacterFrequenciesDiffer() {
        XCTAssertFalse(ValidAnagram.solve("aacc", "ccac"))
    }

    func testSingleCharacter() {
        XCTAssertTrue(ValidAnagram.solve("z", "z"))
    }

    func testOrderDoesNotMatter() {
        XCTAssertTrue(ValidAnagram.solve("listen", "silent"))
    }
}
