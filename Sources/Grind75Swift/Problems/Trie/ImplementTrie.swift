public final class Trie {
    private final class Node {
        var children: [Character: Node] = [:]
        var isWord = false
    }

    private let root = Node()

    public init() {}

    /// Inserts a word into the trie.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n) in the worst case
    public func insert(_ word: String) {
        var node = root

        for character in word {
            if node.children[character] == nil {
                node.children[character] = Node()
            }
            node = node.children[character]!
        }

        node.isWord = true
    }

    /// Returns whether the exact word has been inserted.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public func search(_ word: String) -> Bool {
        findNode(for: word)?.isWord == true
    }

    /// Returns whether any inserted word starts with the prefix.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public func startsWith(_ prefix: String) -> Bool {
        findNode(for: prefix) != nil
    }

    private func findNode(for text: String) -> Node? {
        var node = root

        for character in text {
            guard let child = node.children[character] else {
                return nil
            }
            node = child
        }

        return node
    }
}
