import XCTest
@testable import Grind75Swift

final class WordBreakTests: XCTestCase {
    func testStandardExample() {
        XCTAssertTrue(WordBreak.solve("leetcode", wordDict: ["leet", "code"]))
    }

    func testRepeatedWordCanBeReused() {
        XCTAssertTrue(WordBreak.solve(
            "applepenapple",
            wordDict: ["apple", "pen"]
        ))
    }

    func testOverlappingPrefixesThatCannotComplete() {
        XCTAssertFalse(WordBreak.solve(
            "catsandog",
            wordDict: ["cats", "dog", "sand", "and", "cat"]
        ))
    }

    func testSingleCharacter() {
        XCTAssertTrue(WordBreak.solve("a", wordDict: ["a"]))
    }

    func testDuplicateDictionaryWords() {
        XCTAssertTrue(WordBreak.solve(
            "cars",
            wordDict: ["car", "ca", "rs", "car"]
        ))
    }

    func testEmptyDictionary() {
        XCTAssertFalse(WordBreak.solve("a", wordDict: []))
    }

    func testEmptyStringOutsideLeetCodeConstraints() {
        XCTAssertTrue(WordBreak.solve("", wordDict: ["a"]))
    }

    func testEmptyDictionaryWordIsIgnored() {
        XCTAssertFalse(WordBreak.solve("a", wordDict: [""]))
    }
}
