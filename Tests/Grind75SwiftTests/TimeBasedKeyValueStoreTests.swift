import XCTest
@testable import Grind75Swift

final class TimeBasedKeyValueStoreTests: XCTestCase {
    func testStandardExample() {
        let timeMap = TimeMap()
        timeMap.set("foo", "bar", 1)

        XCTAssertEqual(timeMap.get("foo", 1), "bar")
        XCTAssertEqual(timeMap.get("foo", 3), "bar")

        timeMap.set("foo", "bar2", 4)

        XCTAssertEqual(timeMap.get("foo", 4), "bar2")
        XCTAssertEqual(timeMap.get("foo", 5), "bar2")
    }

    func testMissingKey() {
        XCTAssertEqual(TimeMap().get("missing", 10), "")
    }

    func testQueryBeforeFirstTimestamp() {
        let timeMap = TimeMap()
        timeMap.set("key", "value", 5)

        XCTAssertEqual(timeMap.get("key", 4), "")
    }

    func testMultipleKeysRemainIndependent() {
        let timeMap = TimeMap()
        timeMap.set("a", "first", 1)
        timeMap.set("b", "second", 2)

        XCTAssertEqual(timeMap.get("a", 3), "first")
        XCTAssertEqual(timeMap.get("b", 3), "second")
    }

    func testFindsLatestValueBetweenTimestamps() {
        let timeMap = TimeMap()
        timeMap.set("status", "one", 1)
        timeMap.set("status", "two", 5)
        timeMap.set("status", "three", 9)

        XCTAssertEqual(timeMap.get("status", 8), "two")
    }

    func testDuplicateValuesAtDifferentTimestamps() {
        let timeMap = TimeMap()
        timeMap.set("key", "same", 2)
        timeMap.set("key", "same", 7)

        XCTAssertEqual(timeMap.get("key", 6), "same")
        XCTAssertEqual(timeMap.get("key", 7), "same")
    }

    func testSingleStoredValueAtLargeTimestamp() {
        let timeMap = TimeMap()
        timeMap.set("key", "value", Int.max)

        XCTAssertEqual(timeMap.get("key", Int.max), "value")
    }
}
