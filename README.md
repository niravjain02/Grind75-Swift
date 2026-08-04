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
| 19 | 169 | Majority Element | Easy | Boyer–Moore Majority Vote | Two Integer States | `O(n)` | `O(1)` | ✅ Completed |
| 20 | 67 | Add Binary | Easy | Right-to-Left Addition | Byte Arrays | `O(max(m, n))` | `O(max(m, n))` | ✅ Completed |
| 21 | 543 | Diameter of Binary Tree | Easy | Postorder DFS | Binary Tree | `O(n)` | `O(h)` | ✅ Completed |
| 22 | 876 | Middle of the Linked List | Easy | Fast and Slow Pointers | Singly Linked List | `O(n)` | `O(1)` | ✅ Completed |
| 23 | 104 | Maximum Depth of Binary Tree | Easy | Depth-First Search | Binary Tree | `O(n)` | `O(h)` | ✅ Completed |
| 24 | 217 | Contains Duplicate | Easy | Membership Tracking | Set | `O(n)` | `O(n)` | ✅ Completed |
| 25 | 53 | Maximum Subarray | Medium | Kadane's Algorithm | Two Integer States | `O(n)` | `O(1)` | ✅ Completed |
| 26 | 57 | Insert Interval | Medium | Three-Phase Linear Scan | Interval Array | `O(n)` | `O(n)` | ✅ Completed |
| 27 | 542 | 01 Matrix | Medium | Multi-Source Breadth-First Search | Array-Backed Queue | `O(m * n)` | `O(m * n)` | ✅ Completed |
| 28 | 973 | K Closest Points to Origin | Medium | Bounded Max-Heap | Array-Backed Binary Heap | `O(n log k)` | `O(k)` | ✅ Completed |
| 29 | 3 | Longest Substring Without Repeating Characters | Medium | Sliding Window | Character-to-Index Dictionary | `O(n)` | `O(k)` | ✅ Completed |
| 30 | 15 | 3Sum | Medium | Sorting and Two Pointers | Sorted Integer Array | `O(n²)` | `O(n)` | ✅ Completed |
| 31 | 102 | Binary Tree Level Order Traversal | Medium | Breadth-First Search | Array-Backed Queue | `O(n)` | `O(n)` | ✅ Completed |
| 32 | 133 | Clone Graph | Medium | Breadth-First Search | Identity-to-Clone Dictionary | `O(V + E)` | `O(V)` | ✅ Completed |
| 33 | 150 | Evaluate Reverse Polish Notation | Medium | Postfix Evaluation | Array-Backed Stack | `O(n)` | `O(n)` | ✅ Completed |
| 34 | 207 | Course Schedule | Medium | Topological Sort | Adjacency Lists and Indegree Array | `O(V + E)` | `O(V + E)` | ✅ Completed |
| 35 | 208 | Implement Trie (Prefix Tree) | Medium | Prefix Tree Traversal | Character-to-Node Dictionaries | `O(n)` per operation | `O(n)` insertion, `O(1)` search | ✅ Completed |
| 36 | 322 | Coin Change | Medium | Bottom-Up Dynamic Programming | Minimum-Count Array | `O(amount * c)` | `O(amount)` | ✅ Completed |
| 37 | 238 | Product of Array Except Self | Medium | Prefix and Suffix Products | Output Array and Two Integer States | `O(n)` | `O(1)` auxiliary | ✅ Completed |
| 38 | 155 | Min Stack | Medium | Stack with Running Minimum | Array of Value-Minimum Pairs | `O(1)` per operation | `O(n)` | ✅ Completed |
| 39 | 98 | Validate Binary Search Tree | Medium | DFS with Bounds | Binary Tree and Recursion Stack | `O(n)` | `O(h)` | ✅ Completed |
| 40 | 200 | Number of Islands | Medium | Iterative Depth-First Search | Mutable Grid Copy and Stack | `O(m * n)` | `O(m * n)` | ✅ Completed |
| 41 | 994 | Rotting Oranges | Medium | Multi-Source Breadth-First Search | Mutable Grid Copy and Array-Backed Queue | `O(m * n)` | `O(m * n)` | ✅ Completed |
| 42 | 33 | Search in Rotated Sorted Array | Medium | Modified Binary Search | Integer Bounds | `O(log n)` | `O(1)` | ✅ Completed |
| 43 | 39 | Combination Sum | Medium | Backtracking | Sorted Candidate Array and Recursion Path | `O(n^(t/m))` | `O(t/m)` auxiliary | ✅ Completed |
| 44 | 46 | Permutations | Medium | Backtracking | Used-Index Array and Recursion Path | `O(n * n!)` | `O(n)` auxiliary | ✅ Completed |
| 45 | 56 | Merge Intervals | Medium | Sorting and Linear Merge | Sorted Interval Array | `O(n log n)` | `O(n)` | ✅ Completed |
| 46 | 236 | Lowest Common Ancestor of a Binary Tree | Medium | Postorder DFS | Binary Tree and Recursion Stack | `O(n)` | `O(h)` | ✅ Completed |
| 47 | 981 | Time Based Key-Value Store | Medium | Binary Search by Timestamp | Dictionary of Sorted Entry Arrays | `O(1)` set, `O(log n)` get | `O(n)` | ✅ Completed |
| 48 | 721 | Accounts Merge | Medium | Union-Find | Email Owner Dictionary and Disjoint Set | `O(e log e)` | `O(n + e)` | ✅ Completed |
| 49 | 75 | Sort Colors | Medium | Dutch National Flag | Three Array Indices | `O(n)` | `O(1)` | ✅ Completed |
| 50 | 139 | Word Break | Medium | Dynamic Programming with Trie Traversal | Trie and Reachability Array | `O(d + n * l)` | `O(d + n)` | ✅ Completed |
| 51 | 416 | Partition Equal Subset Sum | Medium | 0/1 Knapsack Dynamic Programming | Boolean Reachability Array | `O(n * t)` | `O(t)` | ✅ Completed |
| 52 | 8 | String to Integer (atoi) | Medium | Bounded Linear Parsing | UTF-8 View and Integer State | `O(n)` | `O(1)` | ✅ Completed |
| 53 | 54 | Spiral Matrix | Medium | Shrinking Boundaries | Four Integer Bounds | `O(m * n)` | `O(1)` auxiliary | ✅ Completed |
| 54 | 78 | Subsets | Medium | Iterative Subset Expansion | Result Array | `O(n * 2^n)` | `O(n * 2^n)` | ✅ Completed |
| 55 | 199 | Binary Tree Right Side View | Medium | Level-Order Traversal | Array-Backed Queue | `O(n)` | `O(n)` | ✅ Completed |
| 56 | 5 | Longest Palindromic Substring | Medium | Expand Around Center | Character Array | `O(n²)` | `O(n)` | ✅ Completed |
| 57 | 62 | Unique Paths | Medium | Grid Dynamic Programming | One-Dimensional Integer Array | `O(m * n)` | `O(min(m, n))` | ✅ Completed |
| 58 | 105 | Construct Binary Tree from Preorder and Inorder Traversal | Medium | Recursive Traversal Partitioning | Index Dictionary and Binary Tree | `O(n)` | `O(n)` | ✅ Completed |

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

## Day 19: Majority Element

Treat each occurrence of the current candidate as one vote and each different
value as a cancellation. When the balance reaches zero, the next value becomes
the candidate. Because the majority appears more often than all other values
combined, it must be the candidate that survives the complete scan.

- Pattern: Boyer–Moore majority vote
- Data structure: Candidate and vote-count integer states
- Time: `O(n)`
- Space: `O(1)`

## Day 20: Add Binary

Scan both binary strings from right to left, adding the current digits and a carry.
Append each result bit to a byte array in reverse order, then reverse it once to
build the final string. Processing the digits directly avoids overflow from
converting long binary inputs to a fixed-width integer.

- Pattern: Right-to-left addition
- Data structure: UTF-8 byte arrays
- Time: `O(max(m, n))`
- Space: `O(max(m, n))` for the returned sum

## Day 21: Diameter of Binary Tree

Use postorder depth-first search to compute the height of each subtree. At every
node, the deepest path passing through it contains `leftHeight + rightHeight`
edges; compare that candidate with the best diameter seen anywhere in the tree.
Return the larger child height plus one to the parent.

- Pattern: Postorder depth-first search
- Data structure: Binary tree with the recursion stack
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`

## Day 22: Middle of the Linked List

Move a slow pointer one node and a fast pointer two nodes on each iteration. When
the fast pointer reaches the end, the slow pointer has traveled half as far and
therefore points to the middle. Starting both pointers at the head naturally
selects the second middle node when the list length is even.

- Pattern: Fast and slow pointers
- Data structure: Singly linked list
- Time: `O(n)`
- Space: `O(1)`

## Day 23: Maximum Depth of Binary Tree

Recursively calculate the maximum depth of the left and right subtrees. An empty
subtree contributes zero, while a nonempty node contributes one plus the deeper
child depth. The result is the number of nodes on the longest root-to-leaf path.

- Pattern: Depth-first search
- Data structure: Binary tree with the recursion stack
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`

## Day 24: Contains Duplicate

Scan the array while inserting each number into a set. Set insertion reports
whether the value was new, so the first failed insertion proves a duplicate and
allows an immediate return without scanning the remaining values.

- Pattern: Membership tracking
- Data structure: Set of integers
- Time: `O(n)` average
- Space: `O(n)`

## Day 25: Maximum Subarray

For each number, choose whether to extend the previous contiguous subarray or
start a new subarray at the current position. Track both the best sum ending at
the current position and the best sum found anywhere, which is Kadane's algorithm.

- Pattern: Dynamic programming (Kadane's algorithm)
- Data structure: Two integer state variables
- Time: `O(n)`
- Space: `O(1)`

## Day 26: Insert Interval

Use the existing sort order to process intervals in three groups. First append
intervals strictly before the new interval, then merge every overlapping interval
by expanding the new interval's endpoints, and finally append the remaining
intervals. Treat touching endpoints as overlapping.

- Pattern: Three-phase linear scan
- Data structure: Array of two-integer intervals
- Time: `O(n)`
- Space: `O(n)` for the returned intervals

## Day 27: 01 Matrix

Start breadth-first search from every zero simultaneously. Each zero has distance
zero; when BFS first reaches an unvisited neighbor, assign one more than the
current distance. Because BFS expands in distance order, that first assignment
is the shortest path to any zero.

- Pattern: Multi-source breadth-first search
- Data structure: Array-backed queue of matrix coordinates
- Time: `O(m * n)`
- Space: `O(m * n)` for the result and queue

## Day 28: K Closest Points to Origin

Maintain a max-heap containing at most `k` points, ordered by squared distance
from the origin. After the heap fills, replace its farthest point whenever a
closer point appears. Squared distances preserve the same ordering as Euclidean
distances while avoiding square roots.

- Pattern: Bounded max-heap
- Data structure: Array-backed binary heap of points
- Time: `O(n log k)`
- Space: `O(k)`

## Day 29: Longest Substring Without Repeating Characters

Maintain a sliding window whose characters are unique. Store each character's
most recent index; when a repeated character lies inside the current window,
move the window start just after that occurrence. The start never moves backward.

- Pattern: Sliding window
- Data structure: Dictionary from character to most recent index
- Time: `O(n)`
- Space: `O(k)` for `k` distinct characters

## Day 30: 3Sum

Sort the numbers, fix one value, and move two pointers through the remaining
range according to whether the current sum is too small or too large. Skip equal
values at every pointer position so each value triplet appears only once.

- Pattern: Sorting and two pointers
- Data structure: Sorted integer array
- Time: `O(n²)`
- Space: `O(n)` for Swift's sorted copy, excluding output

## Day 31: Binary Tree Level Order Traversal

Traverse the tree breadth-first with a queue. Capture the queue's current end
before processing a level so that children appended during that pass belong to
the next level. A moving head index avoids the linear cost of `removeFirst()`.

- Pattern: Breadth-first search
- Data structure: Array-backed queue of tree nodes
- Time: `O(n)`
- Space: `O(n)`

## Day 32: Clone Graph

Traverse the connected graph breadth-first while mapping each original node's
identity to exactly one cloned node. Create a neighbor's clone the first time it
is encountered, enqueue that original for later processing, and append the
mapped clone for every edge. Identity keys correctly distinguish nodes even
when values are duplicated.

- Pattern: Breadth-first search
- Data structure: Dictionary from original node identity to cloned node
- Time: `O(V + E)`
- Space: `O(V)`

## Day 33: Evaluate Reverse Polish Notation

Scan the tokens from left to right. Push every number onto an operand stack. For
an operator, pop the right operand first and the left operand second, apply the
operation, and push its result. A valid postfix expression leaves exactly one
value on the stack.

- Pattern: Postfix expression evaluation
- Data structure: Array-backed integer stack
- Time: `O(n)`
- Space: `O(n)`

## Day 34: Course Schedule

Build directed edges from each prerequisite to the courses that depend on it and
count every course's incoming edges. Enqueue all courses with no remaining
prerequisites, then repeatedly complete one and decrement its dependents'
indegrees. Completing fewer than all courses means a directed cycle blocked the
remainder.

- Pattern: Topological sort (Kahn's algorithm)
- Data structure: Adjacency lists, indegree array, and array-backed queue
- Time: `O(V + E)`
- Space: `O(V + E)`

## Day 35: Implement Trie (Prefix Tree)

Store each character along a path from a root node, sharing common prefixes
between words. Mark the final node of every inserted word so an exact search can
distinguish a complete word from a prefix. Prefix search only needs the path to
exist.

- Pattern: Prefix tree traversal
- Data structure: Trie nodes with character-to-child dictionaries
- Time: `O(n)` per operation for an input of length `n`
- Space: `O(n)` for insertion in the worst case; `O(1)` auxiliary for search

## Day 36: Coin Change

Build the answer for every value from zero through the target amount. For each
value, try every usable coin and add one to the best answer for the remaining
smaller value. An unreachable sentinel distinguishes amounts that cannot be
formed.

- Pattern: Bottom-up dynamic programming
- Data structure: Array of minimum coin counts
- Time: `O(amount * c)` for `c` coin denominations
- Space: `O(amount)`

## Day 37: Product of Array Except Self

Write the product of all values to the left of each index into the output array.
Then scan from right to left, multiplying each output value by the product of
everything to its right. This avoids division and naturally handles zero values.

- Pattern: Prefix and suffix products
- Data structure: Output array plus prefix and suffix integer states
- Time: `O(n)`
- Space: `O(1)` auxiliary, excluding the returned array

## Day 38: Min Stack

Store the minimum at every stack depth alongside the inserted value. Pushing a
value compares it with the previous minimum, and popping automatically restores
the minimum recorded for the preceding depth. No secondary scan is required.

- Pattern: Stack with running aggregate
- Data structure: Array-backed stack of value-minimum pairs
- Time: `O(1)` for every operation
- Space: `O(n)`

## Day 39: Validate Binary Search Tree

Carry the valid lower and upper bounds down the tree. Every node must be strictly
between all bounds inherited from its ancestors, not merely ordered relative to
its parent. Optional bounds safely support `Int.min` and `Int.max` node values.

- Pattern: Depth-first search with bounds
- Data structure: Binary tree with the recursion stack
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`

## Day 40: Number of Islands

Scan every grid cell. When unvisited land is found, count one island and use an
iterative depth-first search to mark its entire four-directionally connected
component as water. Mark cells when adding them to the stack to avoid duplicates.

- Pattern: Connected-component traversal
- Data structure: Mutable grid copy and array-backed stack
- Time: `O(m * n)`
- Space: `O(m * n)`

## Day 41: Rotting Oranges

Enqueue every initially rotten orange so all sources spread at the same time.
Process the queue one level at a time, where each level represents one minute,
and immediately mark newly rotten oranges to prevent duplicate enqueues. A
remaining fresh-orange count identifies an unreachable orange.

- Pattern: Multi-source breadth-first search
- Data structure: Mutable grid copy and array-backed queue
- Time: `O(m * n)`
- Space: `O(m * n)`

## Day 42: Search in Rotated Sorted Array

At every binary-search step, at least one half of the current range is normally
sorted. Identify that half, check whether the target lies within its inclusive
outer bound and exclusive middle bound, and discard the other half. This keeps
the search logarithmic without locating the rotation pivot separately.

- Pattern: Modified binary search
- Data structure: Two integer bounds over the array
- Time: `O(log n)`
- Space: `O(1)`

## Day 43: Combination Sum

Sort the candidates, then build combinations in nondecreasing order with
backtracking. Each recursive call may reuse its current candidate, while its
start index prevents reordered duplicates. Sorting also lets the search stop as
soon as a candidate exceeds the remaining target.

- Pattern: Backtracking
- Data structure: Sorted candidate array and array-backed recursion path
- Time: `O(n^(t/m))` in the worst case for target `t` and smallest candidate `m`
- Space: `O(t/m)` auxiliary space, excluding returned combinations

## Day 44: Permutations

Build each ordering one position at a time with backtracking. At every position,
try each input value whose index is not already in the current path. After
exploring that choice, remove it and mark its index available for the next branch.

- Pattern: Backtracking
- Data structure: Boolean used-index array and array-backed recursion path
- Time: `O(n * n!)`
- Space: `O(n)` auxiliary space, excluding returned permutations

## Day 45: Merge Intervals

Sort intervals by start value so every possible overlap appears next to the
current merged range. Scan once: append a disjoint interval, or extend the last
merged end when the current interval overlaps or touches it.

- Pattern: Sorting and linear merge
- Data structure: Sorted interval array and output array
- Time: `O(n log n)`
- Space: `O(n)` for sorting and the returned intervals

## Day 46: Lowest Common Ancestor of a Binary Tree

Search both subtrees recursively. A target node returns itself; when the left and
right searches both find a target, the current node is their lowest meeting
point. Otherwise, propagate the one nonempty result toward the root.

- Pattern: Postorder depth-first search
- Data structure: Binary tree and recursion stack
- Time: `O(n)`
- Space: `O(h)` for a tree of height `h`

## Day 47: Time Based Key-Value Store

Store each key's values in timestamp order. Since timestamps arrive strictly
increasing, insertion is an append. Retrieval uses upper-bound binary search and
returns the entry immediately before the first timestamp greater than the query.

- Pattern: Binary search by timestamp
- Data structure: Dictionary of sorted entry arrays
- Time: `O(1)` amortized for `set`; `O(log n)` for `get`
- Space: `O(n)` across stored entries

## Day 48: Accounts Merge

Map each email to its first account and union account indices whenever an email
is shared. After all unions, group every email by its representative account and
sort the emails in each resulting component.

- Pattern: Union-find connected components
- Data structure: Email-owner dictionary and disjoint-set arrays
- Time: `O(e * α(n) + e log e)`, dominated by sorting emails
- Space: `O(n + e)`

## Day 49: Sort Colors

Partition the array into zeros, unclassified values, and twos with three indices.
Move zeros to the front and twos to the back; recheck values swapped from the
right because they have not been classified yet.

- Pattern: Dutch national flag partitioning
- Data structure: Three indices over the input array
- Time: `O(n)`
- Space: `O(1)`

## Day 50: Word Break

Build a trie from the dictionary, then use dynamic programming to mark every
reachable boundary in the string. From each reachable boundary, walk forward
through the trie and mark the end of every matched word as reachable. Reaching
the final boundary proves that dictionary words can form the whole string.

- Pattern: Dynamic programming with trie traversal
- Data structure: Byte trie and Boolean reachability array
- Time: `O(d + n * l)` for total dictionary size `d` and longest word length `l`
- Space: `O(d + n)`

## Day 51: Partition Equal Subset Sum

An equal partition exists exactly when some subset sums to half of the total.
Track which sums through that target are reachable, processing the array one
number at a time. Scan sums backward so each input number contributes at most
once instead of being reused during its own iteration.

- Pattern: 0/1 knapsack dynamic programming
- Data structure: Boolean reachability array
- Time: `O(n * t)` for target half-sum `t`
- Space: `O(t)`

## Day 52: String to Integer (atoi)

Skip leading ASCII spaces, read one optional sign, and accumulate consecutive
decimal digits. Before multiplying by ten, compare against the signed 32-bit
limit so overflow clamps safely without ever overflowing Swift's integer type.
Parsing stops at the first character that is not part of the integer.

- Pattern: Bounded linear parsing
- Data structure: UTF-8 view plus sign and magnitude integer state
- Time: `O(n)`
- Space: `O(1)`

## Day 53: Spiral Matrix

Maintain top, bottom, left, and right boundaries around the unvisited rectangle.
Traverse its top row, right column, bottom row, and left column, shrinking each
boundary after use and checking that rows or columns remain before revisiting them.

- Pattern: Shrinking matrix boundaries
- Data structure: Four integer bounds
- Time: `O(m * n)`
- Space: `O(1)` auxiliary, excluding output

## Day 54: Subsets

Start with the empty subset. For each number, copy every subset that already
exists, append the number to each copy, and add those new subsets to the result.
After processing all values, the result contains every include-or-exclude choice.

- Pattern: Iterative subset expansion
- Data structure: Result array of integer arrays
- Time: `O(n * 2^n)`
- Space: `O(n * 2^n)` for the returned subsets

## Day 55: Binary Tree Right Side View

Traverse the tree level by level from left to right. Capture the final node
processed at each level because it is the node visible from the right. An index
advances through the queue so removing its first element never requires shifting.

- Pattern: Level-order breadth-first search
- Data structure: Array-backed queue with a moving head index
- Time: `O(n)`
- Space: `O(n)`

## Day 56: Longest Palindromic Substring

Treat every character and every gap between adjacent characters as a possible
palindrome center. Expand outward while the two characters match and retain the
longest range found. Checking both center types covers odd- and even-length
palindromes without a quadratic dynamic-programming table.

- Pattern: Expand around center
- Data structure: Random-access character array
- Time: `O(n²)`
- Space: `O(n)` for Swift character indexing

## Day 57: Unique Paths

The number of ways to reach a cell equals the paths reaching the cell above plus
the paths reaching the cell to its left. Initialize the first row to one, then
update a single array from left to right for every remaining row. Using the
smaller dimension as the array width minimizes auxiliary storage.

- Pattern: Grid dynamic programming
- Data structure: One-dimensional integer array
- Time: `O(m * n)`
- Space: `O(min(m, n))`

## Day 58: Construct Binary Tree from Preorder and Inorder Traversal

Preorder identifies the next subtree root, while that value's inorder position
divides the remaining nodes into left and right subtrees. Consume preorder once
and recursively build those inorder ranges. A dictionary avoids repeatedly
scanning inorder to locate each root.

- Pattern: Recursive traversal partitioning
- Data structure: Value-to-inorder-index dictionary and binary tree
- Time: `O(n)`
- Space: `O(n)` for the dictionary and recursion stack

## Day 59: Container With Most Water

Start with the widest possible pair of lines and compute its area. Move the
pointer at the shorter line inward because keeping that limiting height while
reducing the width cannot improve the area; only a taller line might. Repeat
until the pointers meet.

- LeetCode: 11
- Difficulty: Medium
- Pattern: Two pointers
- Data structure: Two integer indices
- Time: `O(n)`
- Space: `O(1)`

## Day 60: Letter Combinations of a Phone Number

Build one combination from left to right. At each digit, try each mapped phone
letter, recurse to the next digit, and remove that letter before trying the next
choice. Reaching the end produces one complete combination.

- LeetCode: 17
- Difficulty: Medium
- Pattern: Backtracking
- Data structure: Digit-to-letters dictionary and character path array
- Time: `O(n * 4^n)` including construction of the returned strings
- Space: `O(n)` auxiliary, excluding output

## Day 61: Word Search

Try every cell as the first letter, then use depth-first backtracking through its
four neighbors. Temporarily mark each selected cell so the current path cannot
reuse it, restore the cell when backtracking, and succeed once every word letter
has matched.

- LeetCode: 79
- Difficulty: Medium
- Pattern: Grid depth-first search with backtracking
- Data structure: Mutable board copy and recursion stack
- Time: `O(m * n * 3^l)` for word length `l`
- Space: `O(m * n + l)` for the board copy and recursion stack

## Day 62: Find All Anagrams in a String

Maintain a fixed-size window equal to the pattern length. A frequency dictionary
tracks how many copies of each pattern character are still needed, while one
counter records the total unmatched characters. Add the window's incoming
character, remove its outgoing character, and record the start whenever nothing
remains unmatched.

- LeetCode: 438
- Difficulty: Medium
- Pattern: Fixed-size sliding window
- Data structure: Character-frequency dictionary
- Time: `O(n + m)`
- Space: `O(n + k)` for Swift character indexing and `k` pattern characters

## Day 63: Minimum Height Trees

The root of a minimum-height tree must be at the center of the original tree.
Start with every leaf and remove complete outer layers, decrementing each
neighbor's degree as its leaves disappear. The final one or two nodes are the
tree's center or centers.

- LeetCode: 310
- Difficulty: Medium
- Pattern: Topological leaf trimming
- Data structure: Adjacency list, degree array, and leaf arrays
- Time: `O(n)`
- Space: `O(n)`

## Day 64: Task Scheduler

The most frequent tasks determine the smallest possible schedule frame. Place
each copy except the last into rows of width `cooldown + 1`, then append every
task tied for the maximum frequency. If the remaining tasks fill all gaps, the
task count itself is the tighter bound.

- LeetCode: 621
- Difficulty: Medium
- Pattern: Greedy frequency counting
- Data structure: Task-frequency dictionary
- Time: `O(t)` for `t` tasks
- Space: `O(k)` for `k` distinct task types

## Day 65: LRU Cache

Combine a dictionary with a doubly linked list ordered from least to most recently
used. The dictionary locates a key's node immediately, while the list moves accessed
nodes to the most-recent end and removes the least-recent node without scanning.

- LeetCode: 146
- Difficulty: Medium
- Pattern: Hash map plus recency ordering
- Data structure: Dictionary and doubly linked list
- Time: `O(1)` per `get` and `put`
- Space: `O(capacity)`

## Day 66: Kth Smallest Element in a BST

Traverse the binary search tree in inorder, which visits values from smallest to
largest. An explicit stack holds the path to the next node; stop immediately when
the kth node is popped instead of traversing the rest of the tree.

- LeetCode: 230
- Difficulty: Medium
- Pattern: Iterative inorder traversal
- Data structure: Binary search tree and array-backed stack
- Time: `O(h + k)` for tree height `h`
- Space: `O(h)`

## Day 67: Minimum Window Substring

Expand a window until it contains every required target character, including
duplicates. Then move its left edge forward while it remains valid, recording the
shortest valid range before expanding again.

- LeetCode: 76
- Difficulty: Hard
- Pattern: Variable-size sliding window
- Data structure: Character-frequency dictionary and character array
- Time: `O(n + m)`
- Space: `O(n + k)` for source length `n` and `k` target characters
