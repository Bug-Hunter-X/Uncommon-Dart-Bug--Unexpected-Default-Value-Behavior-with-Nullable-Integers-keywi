# Uncommon Dart Bug: Unexpected Default Value Behavior with Nullable Integers

This repository demonstrates a subtle bug in Dart related to nullable integers and their default values when using a getter with the null-aware operator (`??`).

The bug occurs when a null value is assigned to a nullable integer property, and the getter returns a default value.  While this might appear to be expected behavior, it can lead to unexpected results if the programmer is not aware of this implicit defaulting mechanism.

## How to Reproduce
1. Clone this repository.
2. Run the `bug.dart` file.
3. Observe the output and note the default value behavior when a null is initially passed to the constructor.  This might cause issues if null is implicitly interpreted as a valid default value in a specific context, leading to issues that are difficult to debug.

## Solution
The `bugSolution.dart` file provides a solution, clarifying the handling of null values and removing the ambiguity of the default value behavior.  This approach ensures that the default behavior is explicit and understood.