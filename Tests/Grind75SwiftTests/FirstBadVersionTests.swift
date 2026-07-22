import XCTest
@testable import Grind75Swift

final class FirstBadVersionTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(firstBadVersion(total: 5, firstBad: 4), 4)
    }

    func testSingleVersion() {
        XCTAssertEqual(firstBadVersion(total: 1, firstBad: 1), 1)
    }

    func testFirstVersionIsBad() {
        XCTAssertEqual(firstBadVersion(total: 10, firstBad: 1), 1)
    }

    func testLastVersionIsBad() {
        XCTAssertEqual(firstBadVersion(total: 10, firstBad: 10), 10)
    }

    func testTwoVersions() {
        XCTAssertEqual(firstBadVersion(total: 2, firstBad: 2), 2)
    }

    func testLargeVersionCountAvoidsMiddleOverflow() {
        XCTAssertEqual(
            firstBadVersion(total: Int.max, firstBad: Int.max - 1),
            Int.max - 1
        )
    }

    private func firstBadVersion(total: Int, firstBad: Int) -> Int {
        FirstBadVersion.solve(total) { version in
            version >= firstBad
        }
    }
}
