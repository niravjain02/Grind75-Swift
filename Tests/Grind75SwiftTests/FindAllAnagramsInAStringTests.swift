import XCTest
@testable import Grind75Swift

final class FindAllAnagramsInAStringTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("cbaebabacd", pattern: "abc"),
            [0, 6]
        )
    }

    func testOverlappingAnagrams() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("abab", pattern: "ab"),
            [0, 1, 2]
        )
    }

    func testDuplicatePatternCharacters() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("baa", pattern: "aa"),
            [1]
        )
    }

    func testWholeStringIsAnAnagram() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("bca", pattern: "abc"),
            [0]
        )
    }

    func testNoAnagrams() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("abcdef", pattern: "gh"),
            []
        )
    }

    func testPatternLongerThanString() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("a", pattern: "ab"),
            []
        )
    }

    func testEmptyInputsOutsideConstraints() {
        XCTAssertEqual(FindAllAnagramsInAString.solve("", pattern: "a"), [])
        XCTAssertEqual(FindAllAnagramsInAString.solve("abc", pattern: ""), [])
    }

    func testUnicodeCharacters() {
        XCTAssertEqual(
            FindAllAnagramsInAString.solve("😀a😀", pattern: "a😀"),
            [0, 1]
        )
    }
}
