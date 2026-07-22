import XCTest
@testable import Grind75Swift

final class RansomNoteTests: XCTestCase {
    func testStandardConstructibleExample() {
        XCTAssertTrue(RansomNote.solve("aa", "aab"))
    }

    func testStandardMissingCharacterExample() {
        XCTAssertFalse(RansomNote.solve("a", "b"))
    }

    func testStandardInsufficientDuplicateExample() {
        XCTAssertFalse(RansomNote.solve("aa", "ab"))
    }

    func testEmptyRansomNote() {
        XCTAssertTrue(RansomNote.solve("", "abc"))
    }

    func testBothStringsEmpty() {
        XCTAssertTrue(RansomNote.solve("", ""))
    }

    func testExactSingleCharacterMatch() {
        XCTAssertTrue(RansomNote.solve("z", "z"))
    }

    func testMagazineMayContainExtraDuplicateValues() {
        XCTAssertTrue(RansomNote.solve("aabb", "bbaaaac"))
    }

    func testOrderDoesNotMatter() {
        XCTAssertTrue(RansomNote.solve("abc", "cab"))
    }
}
