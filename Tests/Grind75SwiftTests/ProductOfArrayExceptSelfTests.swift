import XCTest
@testable import Grind75Swift

final class ProductOfArrayExceptSelfTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([1, 2, 3, 4]),
            [24, 12, 8, 6]
        )
    }

    func testStandardExampleWithNegativeValues() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([-1, 1, 0, -3, 3]),
            [0, 0, 9, 0, 0]
        )
    }

    func testOneZero() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([2, 0, 4]),
            [0, 8, 0]
        )
    }

    func testMultipleZeros() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([0, 2, 0, 4]),
            [0, 0, 0, 0]
        )
    }

    func testDuplicateValues() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([2, 2, 2]),
            [4, 4, 4]
        )
    }

    func testNegativeValues() {
        XCTAssertEqual(
            ProductOfArrayExceptSelf.solve([-2, -3, 4]),
            [-12, -8, 6]
        )
    }

    func testMinimalAllowedInput() {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([2, 3]), [3, 2])
    }

    func testSingleValueOutsideLeetCodeConstraints() {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([7]), [1])
    }

    func testEmptyArrayOutsideLeetCodeConstraints() {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([]), [])
    }
}
