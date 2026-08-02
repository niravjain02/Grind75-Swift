import XCTest
@testable import Grind75Swift

final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            LetterCombinationsOfAPhoneNumber.solve("23"),
            ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
        )
    }

    func testEmptyDigits() {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve(""), [])
    }

    func testSingleDigit() {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("2"), ["a", "b", "c"])
    }

    func testDigitsWithFourLetters() {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("79").count, 16)
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("79").first, "pw")
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("79").last, "sz")
    }

    func testDuplicateDigitsStillChooseEachPositionIndependently() {
        XCTAssertEqual(
            LetterCombinationsOfAPhoneNumber.solve("22"),
            ["aa", "ab", "ac", "ba", "bb", "bc", "ca", "cb", "cc"]
        )
    }

    func testUnsupportedDigitOutsideConstraints() {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("21"), [])
    }
}
