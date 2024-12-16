# Vector2

## Overview

The `Vector2` module provides a simple implementation of 2D vectors. It supports basic vector operations such as addition, subtraction, multiplication, division, normalization, and dot product.

## Vector2 Table

### Constructors

- **`Vector2.new(x, y)`**
  - Creates a new `Vector2` instance.
  - **Parameters**:
    - `x` (number): The x-coordinate of the vector (default: 0).
    - `y` (number): The y-coordinate of the vector (default: 0).
  - **Returns**: A new `Vector2` instance.

### Constants

- **`Vector2.ZERO()`**
  - Returns a `Vector2` instance representing the zero vector (0, 0).

## Metamethods

### Arithmetic Operations

- **`Vector2.__add(a, b)`**
  - Adds two vectors.
  - **Parameters**:
    - `a` (Vector2): The first vector.
    - `b` (Vector2 or Vector3): The second vector to add.
  - **Returns**: A new `Vector2` or `Vector3` instance.

- **`Vector2.__sub(a, b)`**
  - Subtracts one vector from another.
  - **Parameters**:
    - `a` (Vector2): The vector to subtract from.
    - `b` (Vector2 or Vector3): The vector to subtract.
  - **Returns**: A new `Vector2` or `Vector3` instance.

- **`Vector2.__mul(a, b)`**
  - Multiplies a vector by a scalar or computes the dot product if both operands are vectors.
  - **Parameters**:
    - `a` (Vector2): The vector.
    - `b` (number or Vector2): The scalar or second vector.
  - **Returns**: A new `Vector2` instance or a number (dot product).

- **`Vector2.__div(a, b)`**
  - Divides a vector by a scalar.
  - **Parameters**:
    - `a` (Vector2): The vector.
    - `b` (number): The scalar divisor.
  - **Returns**: A new `Vector2` instance.

### Instance Methods

- **`Vector2:length()`**
  - Calculates the length (magnitude) of the vector.
  - **Returns**: The length of the vector (number).

- **`Vector2:normalize()`**
  - Normalizes the vector, scaling it to a unit vector.
  - **Returns**: A new `Vector2` instance representing the normalized vector.

- **`Vector2:dot(other)`**
  - Computes the dot product with another vector.
  - **Parameters**:
    - `other` (Vector2): The vector to compute the dot product with.
  - **Returns**: The dot product (number).

### String Representation

- **`Vector2:__tostring()`**
  - Returns a string representation of the vector.
  - **Returns**: A string in the format `(x, y)`.

## Example Usage

```lua
local v1 = Vector2.new(3, 4)
local v2 = Vector2.new(1, 2)

local sum = v1 + v2          -- Vector2(4, 6)
local difference = v1 - v2   -- Vector2(2, 2)
local product = v1 * 2       -- Vector2(6, 8)
local dotProduct = v1:dot(v2) -- 11
local length = v1:length()   -- 5
local normalized = v1:normalize() -- Vector2(0.6, 0.8)
```
