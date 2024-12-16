# Vector3

## Overview

The `Vector3` module provides an implementation of 3D vectors. It supports various vector operations such as addition, subtraction, multiplication, division, normalization, dot product, and cross product.

## Vector3 Table

### Constructors

- **`Vector3.new(x, y, z)`**
  - Creates a new `Vector3` instance.
  - **Parameters**:
    - `x` (number): The x-coordinate of the vector (default: 0).
    - `y` (number): The y-coordinate of the vector (default: 0).
    - `z` (number): The z-coordinate of the vector (default: 0).
  - **Returns**: A new `Vector3` instance.

### Constants

- **`Vector3.ZERO()`**
  - Returns a `Vector3` instance representing the zero vector (0, 0, 0).

## Metamethods

### Arithmetic Operations

- **`Vector3.__add(a, b)`**
  - Adds two vectors.
  - **Parameters**:
    - `a` (Vector3): The first vector.
    - `b` (Vector3 or Vector2): The second vector to add.
  - **Returns**: A new `Vector3` instance.

- **`Vector3.__sub(a, b)`**
  - Subtracts one vector from another.
  - **Parameters**:
    - `a` (Vector3): The vector to subtract from.
    - `b` (Vector3 or Vector2): The vector to subtract.
  - **Returns**: A new `Vector3` instance.

- **`Vector3.__mul(a, b)`**
  - Multiplies a vector by a scalar or computes the dot product if both operands are vectors.
  - **Parameters**:
    - `a` (Vector3): The vector.
    - `b` (number or Vector3): The scalar or second vector.
  - **Returns**: A new `Vector3` instance or a number (dot product).

- **`Vector3.__div(a, b)`**
  - Divides a vector by a scalar.
  - **Parameters**:
    - `a` (Vector3): The vector.
    - `b` (number): The scalar divisor.
  - **Returns**: A new `Vector3` instance.

### Instance Methods

- **`Vector3:length()`**
  - Calculates the length (magnitude) of the vector.
  - **Returns**: The length of the vector (number).

- **`Vector3:normalize()`**
  - Normalizes the vector, scaling it to a unit vector.
  - **Returns**: A new `Vector3` instance representing the normalized vector.

- **`Vector3:dot(other)`**
  - Computes the dot product with another vector.
  - **Parameters**:
    - `other` (Vector3): The vector to compute the dot product with.
  - **Returns**: The dot product (number).

- **`Vector3:cross(other)`**
  - Computes the cross product with another vector.
  - **Parameters**:
    - `other` (Vector3): The vector to compute the cross product with.
  - **Returns**: A new `Vector3` instance representing the cross product.

### String Representation

- **`Vector3:__tostring()`**
  - Returns a string representation of the vector.
  - **Returns**: A string in the format `(x, y, z)`.

## Example Usage

```lua
local v1 = Vector3.new(1, 2, 3)
local v2 = Vector3.new(4, 5, 6)

local sum = v1 + v2          -- Vector3(5, 7, 9)
local difference = v1 - v2   -- Vector3(-3, -3, -3)
local product = v1 * 2       -- Vector3(2, 4, 6)
local dotProduct = v1:dot(v2) -- 32
local crossProduct = v1:cross(v2) -- Vector3(-3, 6, -3)
local length = v1:length()   -- 3.7416573867739
local normalized = v1:normalize() -- Vector3(0.2672612419124, 0.53452248382484, 0.80178372573727)
```
