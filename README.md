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
| 7 | 242 | Valid Anagram | Easy | Frequency Counting | Dictionary | `O(n)` | `O(k)` | ✅ Completed |
| 8 | 704 | Binary Search | Easy | Binary Search | Integer Bounds | `O(log n)` | `O(1)` | ✅ Completed |
| 9 | 733 | Flood Fill | Easy | Breadth-First Search | Array-Backed Queue | `O(m * n)` | `O(m * n)` | ✅ Completed |
| 10 | 235 | Lowest Common Ancestor of a Binary Search Tree | Easy | BST Search | Binary Search Tree | `O(h)` | `O(1)` | ✅ Completed |
| 11 | 110 | Balanced Binary Tree | Easy | Postorder DFS | Binary Tree | `O(n)` | `O(h)` | ✅ Completed |
| 12 | 141 | Linked List Cycle | Easy | Fast and Slow Pointers | Singly Linked List | `O(n)` | `O(1)` | ✅ Completed |
| 13 | 232 | Implement Queue using Stacks | Easy | Lazy Stack Transfer | Two Array-Backed Stacks | Amortized `O(1)` | `O(n)` | ✅ Completed |
| 14 | 278 | First Bad Version | Easy | Binary Search | Integer Bounds | `O(log n)` | `O(1)` | ✅ Completed |
| 15 | 383 | Ransom Note | Easy | Frequency Counting | Fixed-Size Integer Array | `O(m + n)` | `O(1)` | ✅ Completed |
| 16 | 70 | Climbing Stairs | Easy | Dynamic Programming | Two Integer States | `O(n)` | `O(1)` | ✅ Completed |
| 17 | 409 | Longest Palindrome | Easy | Pair Counting | Set | `O(n)` | `O(k)` | ✅ Completed |
| 18 | 206 | Reverse Linked List | Easy | Iterative Pointer Reversal | Singly Linked List | `O(n)` | `O(1)` | ✅ Completed |

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

## Day 7: Valid Anagram

Count every character in the first string with a dictionary. Decrement the
matching count for each character in the second string, rejecting missing or
overused characters immediately. Removing zero counts leaves an empty dictionary
exactly when the strings are anagrams.

- Pattern: Frequency counting
- Data structure: Dictionary from character to count
- Time: `O(n)`
- Space: `O(k)` for `k` distinct characters

## Day 8: Binary Search

Keep inclusive left and right bounds around the portion of the sorted array that
may contain the target. Compare the middle value with the target and discard the
half that cannot contain it. Return the middle index on a match or `-1` when the
bounds cross.

- Pattern: Binary search
- Data structure: Two integer bounds over the array
- Time: `O(log n)`
- Space: `O(1)`

## Day 9: Flood Fill

Start at the selected pixel and use breadth-first search to visit every
four-directionally connected pixel with the same original color. Recolor pixels
when they enter the queue so each coordinate is processed at most once. If the
new color already matches the original, return immediately.

- Pattern: Breadth-first search
- Data structure: Array-backed queue of grid coordinates
- Time: `O(m * n)`
- Space: `O(m * n)`

## Day 10: Lowest Common Ancestor of a Binary Search Tree

Use the BST ordering to compare each node with the lower and upper target values.
When both targets are larger, move right; when both are smaller, move left. The
first node between the target values is where their paths split, so it is their
lowest common ancestor.

- Pattern: Binary search tree search
- Data structure: Binary search tree
- Time: `O(h)` for a tree of height `h`
- Space: `O(1)`

## Day 11: Balanced Binary Tree

Compute subtree heights with postorder depth-first search. Each call returns its
height when balanced or `-1` when an imbalance has already been found. This sentinel
propagates upward immediately, avoiding repeated height calculations and unnecessary
work after the answer is known.

- Pattern: Postorder depth-first search
- Data structure: Binary tree with the recursion stack
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`

## Day 12: Linked List Cycle

Move one pointer one node at a time and another pointer two nodes at a time. If the
list has a cycle, the faster pointer must eventually catch the slower pointer inside
it. If the faster pointer reaches the end, the list is acyclic. Compare node identity,
not stored values, because different nodes may contain duplicates.

- Pattern: Fast and slow pointers (Floyd's cycle detection)
- Data structure: Singly linked list
- Time: `O(n)`
- Space: `O(1)`

## Day 13: Implement Queue using Stacks

Push new elements onto an input stack. For `pop` or `peek`, transfer all elements
to an output stack only when that stack is empty; reversing their order exposes the
oldest element at the top. Each element moves between stacks at most once, so queue
operations take constant amortized time.

- Pattern: Lazy stack transfer
- Data structure: Two array-backed stacks
- Time: `O(1)` amortized per operation; a single transfer can take `O(n)`
- Space: `O(n)`

## Day 14: First Bad Version

Binary-search the monotonic sequence of good versions followed by bad versions.
When the middle version is bad, keep it as a candidate by moving the right bound
to it. Otherwise discard it and every earlier version. The bounds meet at the
first bad version.

- Pattern: Binary search for the first true value
- Data structure: Two integer bounds
- Time: `O(log n)`
- Space: `O(1)`

## Day 15: Ransom Note

Count the magazine's lowercase letters in a fixed 26-slot array. Consume one
count for each letter in the ransom note and fail immediately if a required
letter is unavailable. Letter order does not matter, but duplicate counts do.

- Pattern: Frequency counting
- Data structure: Fixed-size integer array
- Time: `O(m + n)`
- Space: `O(1)` because the alphabet size is fixed

## Day 16: Climbing Stairs

The number of ways to reach a step is the sum of the ways to reach the previous
two steps, because the final move must be either one or two steps. Keep only
those two prior results instead of an entire dynamic-programming array.

- Pattern: Dynamic programming with rolling state
- Data structure: Two integer state variables
- Time: `O(n)`
- Space: `O(1)`

## Day 17: Longest Palindrome

Scan the string while keeping a set of characters that currently lack a partner.
The second occurrence of an unpaired character completes a mirrored pair, so remove
it from the set and add two to the palindrome length. After all pairs are counted,
one leftover character may occupy the center.

- Pattern: Pair counting
- Data structure: Set of unpaired characters
- Time: `O(n)`
- Space: `O(k)` for `k` distinct characters

## Day 18: Reverse Linked List

Walk through the list while tracking the already reversed prefix. Before redirecting
each node's `next` pointer toward the previous node, save its original successor so
the unreversed suffix remains reachable. The final previous node is the new head.

- Pattern: Iterative pointer reversal
- Data structure: Singly linked list
- Time: `O(n)`
- Auxiliary space: `O(1)`
