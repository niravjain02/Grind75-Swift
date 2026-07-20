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
