# Algorithm complexity

Algorithm complexity is how we can measure the resource an algorithm uses to
executes.

## Time complexity

How much time takes an algorithm to complete its execution.

### Constant time - O(1)

Execution time does not depend on the size of the input data.

- Access an element in an array by index.
- Insert/delete an element at the end of an array.
- Math operations.

### Logarithmic time - O(log n)

Execution times decrease by half with each iteration, as algorithm eliminates
half of the input data at each step.

- Binary search in a sorted array.

### Linear time - O(n)

Execution time increases linearly with the size of the input data.
(in the worst case, we need to check every item in the input data).

- Iterate through an array.
- Find an item in an unsorted array.
- Count frequency of items in an array.

### Log-linear time - O(n log n)

Algorithms that divide the input data into smaller parts and then combine the
results.

- Merge sort.
- Quick sort.

### Quadratic time - O(n^2)

Execution time increases quadratically with the size of the input data (if data
is double, execution time is quadrupled).

- Nested loops iterating through the same input data.
- Bubble sort.
- Selection sort.

### Exponential time - O(2^n)

Execution time doubles with each additional item in the input data.

### O(n!)

Execution time increases factorially with the size of the input data.

- Calculating permutations of a set of items.

## Space complexity

How much additional memory an algorithm uses to complete its execution.

### Constant space - O(1)

Execution space does not depend on the size of the input data.

- Using a fixed number of variables.

### Linear space - O(log n)

Execution space increases slowly with the size of the input data.

### Linear space - O(n)

Execution space increases linearly with the size of the input data.

- Copying an array.
- Using a dict/set to store all input data.

### Quadratic space - O(n^2)

Execution space increases quadratically with the size of the input data.

- Creating a 2D array to store results of operations on pairs of items.

## Big O notation

When we talk about algorithm complexity, we use Big O notation to describe the
worst-case scenario of an algorithm's performance. It offers a high-level
understanding of how an algorithm behaves as the input size grows.
