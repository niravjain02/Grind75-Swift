class Trie {
    private final class Node {
        var children: [Character: Node] = [:]
        var isWord = false
    }

    private let root = Node()

    init() {}

    func insert(_ word: String) {
        var node = root

        for character in word {
            if node.children[character] == nil {
                node.children[character] = Node()
            }
            node = node.children[character]!
        }

        node.isWord = true
    }

    func search(_ word: String) -> Bool {
        findNode(for: word)?.isWord == true
    }

    func startsWith(_ prefix: String) -> Bool {
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
