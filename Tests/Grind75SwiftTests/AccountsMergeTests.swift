import XCTest
@testable import Grind75Swift

final class AccountsMergeTests: XCTestCase {
    func testStandardExample() {
        let accounts = [
            ["John", "johnsmith@mail.com", "john_newyork@mail.com"],
            ["John", "johnsmith@mail.com", "john00@mail.com"],
            ["Mary", "mary@mail.com"],
            ["John", "johnnybravo@mail.com"]
        ]

        XCTAssertEqual(
            normalized(AccountsMerge.solve(accounts)),
            normalized([
                ["John", "john00@mail.com", "john_newyork@mail.com", "johnsmith@mail.com"],
                ["Mary", "mary@mail.com"],
                ["John", "johnnybravo@mail.com"]
            ])
        )
    }

    func testEmptyAccounts() {
        XCTAssertEqual(AccountsMerge.solve([]), [])
    }

    func testSingleAccountSortsEmails() {
        XCTAssertEqual(
            AccountsMerge.solve([["A", "z@mail.com", "a@mail.com"]]),
            [["A", "a@mail.com", "z@mail.com"]]
        )
    }

    func testSameNameWithoutSharedEmailRemainsSeparate() {
        let accounts = [["Alex", "a@mail.com"], ["Alex", "b@mail.com"]]

        XCTAssertEqual(normalized(AccountsMerge.solve(accounts)), normalized(accounts))
    }

    func testTransitiveSharedEmailsMergeAllAccounts() {
        let accounts = [
            ["Lee", "a@mail.com", "b@mail.com"],
            ["Lee", "b@mail.com", "c@mail.com"],
            ["Lee", "c@mail.com", "d@mail.com"]
        ]

        XCTAssertEqual(
            AccountsMerge.solve(accounts),
            [["Lee", "a@mail.com", "b@mail.com", "c@mail.com", "d@mail.com"]]
        )
    }

    func testDuplicateEmailWithinAccountAppearsOnce() {
        let accounts = [["Sam", "same@mail.com", "same@mail.com"]]

        XCTAssertEqual(AccountsMerge.solve(accounts), [["Sam", "same@mail.com"]])
    }

    func testDifferentNamesRemainIndependent() {
        let accounts = [["A", "a@mail.com"], ["B", "b@mail.com"]]

        XCTAssertEqual(normalized(AccountsMerge.solve(accounts)), normalized(accounts))
    }

    private func normalized(_ accounts: [[String]]) -> [[String]] {
        accounts
            .map { [$0[0]] + $0.dropFirst().sorted() }
            .sorted { first, second in
                if first[0] != second[0] { return first[0] < second[0] }
                return first.dropFirst().joined(separator: "|") <
                    second.dropFirst().joined(separator: "|")
            }
    }
}
