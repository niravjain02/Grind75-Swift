import XCTest
@testable import Grind75Swift

final class LRUCacheTests: XCTestCase {
    func testStandardExample() {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        XCTAssertEqual(cache.get(1), 1)
        cache.put(3, 3)
        XCTAssertEqual(cache.get(2), -1)
        cache.put(4, 4)
        XCTAssertEqual(cache.get(1), -1)
        XCTAssertEqual(cache.get(3), 3)
        XCTAssertEqual(cache.get(4), 4)
    }

    func testUpdatingExistingKeyChangesValueAndRecency() {
        let cache = LRUCache(2)
        cache.put(1, 10)
        cache.put(2, 20)
        cache.put(1, -10)
        cache.put(3, 30)

        XCTAssertEqual(cache.get(1), -10)
        XCTAssertEqual(cache.get(2), -1)
        XCTAssertEqual(cache.get(3), 30)
    }

    func testGetChangesRecency() {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        XCTAssertEqual(cache.get(1), 1)
        cache.put(3, 3)

        XCTAssertEqual(cache.get(1), 1)
        XCTAssertEqual(cache.get(2), -1)
    }

    func testCapacityOne() {
        let cache = LRUCache(1)
        cache.put(1, 1)
        cache.put(2, 2)

        XCTAssertEqual(cache.get(1), -1)
        XCTAssertEqual(cache.get(2), 2)
    }

    func testDuplicateValuesUseKeysForIdentity() {
        let cache = LRUCache(2)
        cache.put(1, 7)
        cache.put(2, 7)

        XCTAssertEqual(cache.get(1), 7)
        XCTAssertEqual(cache.get(2), 7)
    }

    func testNegativeKeysAndValues() {
        let cache = LRUCache(2)
        cache.put(-1, -10)
        cache.put(-2, -20)

        XCTAssertEqual(cache.get(-1), -10)
        XCTAssertEqual(cache.get(-2), -20)
    }

    func testZeroCapacityOutsideConstraintsStoresNothing() {
        let cache = LRUCache(0)
        cache.put(1, 1)

        XCTAssertEqual(cache.get(1), -1)
    }
}
