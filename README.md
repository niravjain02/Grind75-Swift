# Grind75-Swift

Swift solutions for the Grind 75 LeetCode list:

https://leetcode.com/problem-list/rab78cw1/

Each problem includes:

- A simple, optimal Swift solution
- Explanation of the algorithm and selected data structure
- Time and space complexity
- Edge cases and common mistakes
- Unit tests where practical
- A LeetCode-ready submission file

## Progress

| Day | # | Problem | Difficulty | Pattern | Data Structure | Time | Space | Status |
|---:|---:|---|---|---|---|---|---|---|
| 1 | 1 | Two Sum | Easy | Hash Map | Dictionary | `O(n)` | `O(n)` | ✅ Completed |
| 2 | 20 | Valid Parentheses | Easy | Matching Delimiters | Stack | `O(n)` | `O(n)` | ✅ Completed |
| 3 | 21 | Merge Two Sorted Lists | Easy | Two Pointers | Singly Linked List | `O(m + n)` | `O(1)` | ✅ Completed |
| 4 | 121 | Best Time to Buy and Sell Stock | Easy | Sliding Minimum | Integer State | `O(n)` | `O(1)` | ✅ Completed |
| 5 | 125 | Valid Palindrome | Easy | Two Pointers | Filtered Character Array | `O(n)` | `O(n)` | ✅ Completed |
| 6 | 226 | Invert Binary Tree | Easy | Depth-First Search | Binary Tree | `O(n)` | `O(h)` | ✅ Completed |

## Repository Structure

```text
Grind75-Swift/
├── Sources/Grind75Swift/Problems/
├── Tests/Grind75SwiftTests/
├── LeetCodeSubmissions/
├── Package.swift
└── README.md
```

## Run Tests

```bash
swift test
```

## Day 1: Two Sum

Use a dictionary to map each previously visited number to its index. For each value,
calculate `target - value`. If that complement is already in the dictionary, return
the stored index and current index.

- Time: `O(n)`
- Space: `O(n)`

## Day 2: Valid Parentheses

Scan the string from left to right. Push opening brackets onto a stack. For each
closing bracket, pop the most recent opening bracket and verify that the pair
matches. The string is valid only when every closing bracket matches and the stack
is empty after the scan.

- Pattern: Matching delimiters
- Data structure: Stack backed by `[Character]`
- Time: `O(n)`
- Space: `O(n)`

## Day 3: Merge Two Sorted Lists

Maintain pointers to the current node in each sorted list and append the smaller
node to a result tail. A dummy head removes special handling for the first result
node. When either input ends, attach the other list's remaining sorted suffix.

- Pattern: Two pointers
- Data structure: Singly linked list with a dummy head
- Time: `O(m + n)`
- Auxiliary space: `O(1)`

## Day 4: Best Time to Buy and Sell Stock

Scan prices once while tracking the lowest price seen so far. At each price,
calculate the profit from selling today after buying at that earlier minimum and
keep the largest profit. Returning zero represents choosing not to trade.

- Pattern: Sliding minimum
- Data structure: Two integer state variables
- Time: `O(n)`
- Space: `O(1)`

## Day 5: Valid Palindrome

Normalize the string by lowercasing it and retaining only letters and numbers.
Compare characters from both ends, moving inward until the pointers meet. Any
mismatch proves that the normalized string is not a palindrome.

- Pattern: Two pointers
- Data structure: Filtered character array
- Time: `O(n)`
- Space: `O(n)`

## Day 6: Invert Binary Tree

Visit every node with depth-first search. Recursively invert both subtrees and
attach them on the opposite sides of the current node. The existing nodes are
reused, so only the recursion stack requires auxiliary storage.

- Pattern: Depth-first search
- Data structure: Binary tree
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`
