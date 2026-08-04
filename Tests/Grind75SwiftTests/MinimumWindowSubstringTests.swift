import XCTest
@testable import Grind75Swift

final class MinimumWindowSubstringTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            MinimumWindowSubstring.solve("ADOBECODEBANC", target: "ABC"),
            "BANC"
        )
    }

    func testSingleCharacterMatch() {
        XCTAssertEqual(MinimumWindowSubstring.solve("a", target: "a"), "a")
    }

    func testNoWindowWhenTargetFrequencyIsTooLarge() {
        XCTAssertEqual(MinimumWindowSubstring.solve("a", target: "aa"), "")
    }

    func testDuplicateTargetCharacters() {
        XCTAssertEqual(
            MinimumWindowSubstring.solve("AAABBC", target: "AABC"),
            "AABBC"
        )
    }

    func testIrrelevantCharactersAreRemovedFromBothEnds() {
        XCTAssertEqual(
            MinimumWindowSubstring.solve("xxAByyCzz", target: "ABC"),
            "AByyC"
        )
    }

    func testEntireSourceIsMinimumWindow() {
        XCTAssertEqual(
            MinimumWindowSubstring.solve("cab", target: "abc"),
            "cab"
        )
    }

    func testMatchingIsCaseSensitive() {
        XCTAssertEqual(MinimumWindowSubstring.solve("aA", target: "A"), "A")
    }

    func testUnicodeCharacters() {
        XCTAssertEqual(
            MinimumWindowSubstring.solve("x🙂éy🙂", target: "é🙂"),
            "🙂é"
        )
    }

    func testEmptyInputsOutsideConstraints() {
        XCTAssertEqual(MinimumWindowSubstring.solve("", target: "a"), "")
        XCTAssertEqual(MinimumWindowSubstring.solve("abc", target: ""), "")
    }
}
