import XCTest
@testable import Grind75Swift

final class TrappingRainWaterTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            TrappingRainWater.solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]),
            6
        )
    }

    func testSecondStandardExample() {
        XCTAssertEqual(TrappingRainWater.solve([4, 2, 0, 3, 2, 5]), 9)
    }

    func testEmptyAndMinimalInputs() {
        XCTAssertEqual(TrappingRainWater.solve([]), 0)
        XCTAssertEqual(TrappingRainWater.solve([4]), 0)
        XCTAssertEqual(TrappingRainWater.solve([4, 0]), 0)
    }

    func testSingleBasin() {
        XCTAssertEqual(TrappingRainWater.solve([3, 0, 3]), 3)
    }

    func testDuplicatePlateaus() {
        XCTAssertEqual(TrappingRainWater.solve([3, 3, 1, 1, 3, 3]), 4)
    }

    func testMonotonicHeightsTrapNoWater() {
        XCTAssertEqual(TrappingRainWater.solve([0, 1, 2, 3, 4]), 0)
        XCTAssertEqual(TrappingRainWater.solve([4, 3, 2, 1, 0]), 0)
    }

    func testZeroHeightBars() {
        XCTAssertEqual(TrappingRainWater.solve([0, 0, 0, 0]), 0)
    }
}
