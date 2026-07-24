import XCTest
@testable import Grind75Swift

final class AddBinaryTests: XCTestCase {
    func testStandardShortExample() {
        XCTAssertEqual(AddBinary.solve("11", "1"), "100")
    }

    func testStandardLongerExample() {
        XCTAssertEqual(AddBinary.solve("1010", "1011"), "10101")
    }

    func testBothInputsAreZero() {
        XCTAssertEqual(AddBinary.solve("0", "0"), "0")
    }

    func testDifferentLengthsWithoutFinalCarry() {
        XCTAssertEqual(AddBinary.solve("1000", "1"), "1001")
    }

    func testCarryPropagatesAcrossEveryDigit() {
        XCTAssertEqual(AddBinary.solve("1111", "1"), "10000")
    }

    func testLongInputsDoNotRequireIntegerConversion() {
        let ones = String(repeating: "1", count: 100)
        let expected = "1" + String(repeating: "0", count: 100)

        XCTAssertEqual(AddBinary.solve(ones, "1"), expected)
    }
}
