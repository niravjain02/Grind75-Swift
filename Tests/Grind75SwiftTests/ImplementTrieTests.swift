import XCTest
@testable import Grind75Swift

final class ImplementTrieTests: XCTestCase {
    func testStandardExample() {
        let trie = Trie()

        trie.insert("apple")

        XCTAssertTrue(trie.search("apple"))
        XCTAssertFalse(trie.search("app"))
        XCTAssertTrue(trie.startsWith("app"))

        trie.insert("app")

        XCTAssertTrue(trie.search("app"))
    }

    func testMissingWordAndPrefix() {
        let trie = Trie()
        trie.insert("swift")

        XCTAssertFalse(trie.search("swim"))
        XCTAssertFalse(trie.startsWith("x"))
    }

    func testDuplicateInsertion() {
        let trie = Trie()

        trie.insert("code")
        trie.insert("code")

        XCTAssertTrue(trie.search("code"))
        XCTAssertTrue(trie.startsWith("cod"))
    }

    func testWordCanBePrefixOfAnotherWord() {
        let trie = Trie()

        trie.insert("car")
        trie.insert("cart")

        XCTAssertTrue(trie.search("car"))
        XCTAssertTrue(trie.search("cart"))
        XCTAssertFalse(trie.search("ca"))
    }

    func testSingleCharacterWords() {
        let trie = Trie()

        trie.insert("a")
        trie.insert("b")

        XCTAssertTrue(trie.search("a"))
        XCTAssertTrue(trie.search("b"))
        XCTAssertFalse(trie.search("c"))
    }

    func testEmptyStringOutsideLeetCodeConstraints() {
        let trie = Trie()

        XCTAssertTrue(trie.startsWith(""))
        XCTAssertFalse(trie.search(""))

        trie.insert("")

        XCTAssertTrue(trie.search(""))
    }
}
