import XCTest
@testable import Grind75Swift

final class StringToIntegerAtoiTests: XCTestCase {
    func testStandardPositiveExample() {
        XCTAssertEqual(StringToIntegerAtoi.solve("42"), 42)
    }

    func testLeadingSpacesAndNegativeSign() {
        XCTAssertEqual(StringToIntegerAtoi.solve("   -042"), -42)
    }

    func testStopsAtFirstNondigit() {
        XCTAssertEqual(StringToIntegerAtoi.solve("1337c0d3"), 1337)
    }

    func testLeadingNondigitReturnsZero() {
        XCTAssertEqual(StringToIntegerAtoi.solve("words and 987"), 0)
    }

    func testPositiveOverflowClamps() {
        XCTAssertEqual(StringToIntegerAtoi.solve("2147483648"), Int(Int32.max))
    }

    func testNegativeOverflowClamps() {
        XCTAssertEqual(StringToIntegerAtoi.solve("-91283472332"), Int(Int32.min))
    }

    func testExactIntegerBounds() {
        XCTAssertEqual(StringToIntegerAtoi.solve("2147483647"), Int(Int32.max))
        XCTAssertEqual(StringToIntegerAtoi.solve("-2147483648"), Int(Int32.min))
    }

    func testEmptyAndMinimalInputs() {
        XCTAssertEqual(StringToIntegerAtoi.solve(""), 0)
        XCTAssertEqual(StringToIntegerAtoi.solve(" "), 0)
        XCTAssertEqual(StringToIntegerAtoi.solve("+"), 0)
        XCTAssertEqual(StringToIntegerAtoi.solve("-"), 0)
    }

    func testRepeatedSignsAreInvalid() {
        XCTAssertEqual(StringToIntegerAtoi.solve("+-12"), 0)
        XCTAssertEqual(StringToIntegerAtoi.solve("--12"), 0)
    }

    func testSignAfterDigitsStopsParsing() {
        XCTAssertEqual(StringToIntegerAtoi.solve("0-1"), 0)
    }

    func testDecimalPointStopsParsing() {
        XCTAssertEqual(StringToIntegerAtoi.solve("3.14159"), 3)
    }

    func testLeadingZerosDoNotAffectOverflowHandling() {
        XCTAssertEqual(
            StringToIntegerAtoi.solve("000000000002147483648"),
            Int(Int32.max)
        )
    }
}
