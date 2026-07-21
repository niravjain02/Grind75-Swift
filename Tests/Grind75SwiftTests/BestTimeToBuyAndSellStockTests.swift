import XCTest
@testable import Grind75Swift

final class BestTimeToBuyAndSellStockTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([7, 1, 5, 3, 6, 4]), 5)
    }

    func testDecreasingPricesReturnZero() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([7, 6, 4, 3, 1]), 0)
    }

    func testSinglePriceReturnsZero() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([5]), 0)
    }

    func testEmptyPricesReturnZero() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([]), 0)
    }

    func testDuplicatePrices() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([3, 3, 5, 0, 0, 3, 1, 4]), 4)
    }

    func testTwoIncreasingPrices() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([1, 2]), 1)
    }

    func testZeroProfitWithEqualPrices() {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([2, 2, 2]), 0)
    }
}
