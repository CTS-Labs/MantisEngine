# Lua Random Module Documentation

This document provides a comprehensive overview of the `random` module in Lua, which includes various functions for generating random values and manipulating tables.

## Overview

The `random` module includes the following functions:

- `randomElement(tbl)`
- `randomElements(tbl, count)`
- `randomInteger(min, max)`
- `randomFloat(min, max)`
- `shuffle(tbl)`

Each function is designed to handle random selections and number generation with specific constraints.

## Functions

### 1. `random.randomElement(tbl)`

Returns a random element from the provided table.

#### Parameters
- `tbl`: A table (array) from which to select a random element.

#### Returns
- A randomly selected element from `tbl`.

#### Errors
- Throws an error if the table is empty.

#### Example
```lua
local fruits = {"apple", "banana", "cherry"}
local randomFruit = random.randomElement(fruits)
```

### 2. `random.randomElements(tbl, count)`

Returns a specified number of unique random elements from the provided table.

#### Parameters
- `tbl`: A table (array) from which to select elements.
- `count`: The number of random elements to return.

#### Returns
- A table containing `count` unique random elements from `tbl`.

#### Errors
- Throws an error if:
  - The table is empty.
  - `count` is less than 1 or greater than the size of the table.

#### Example
```lua
local numbers = {1, 2, 3, 4, 5}
local randomNumbers = random.randomElements(numbers, 3)
```

### 3. `random.randomInteger(min, max)`

Generates a random integer between the specified minimum and maximum values.

#### Parameters
- `min`: The minimum integer value (inclusive).
- `max`: The maximum integer value (inclusive).

#### Returns
- A random integer between `min` and `max`.

#### Errors
- Throws an error if `min` is greater than `max`.

#### Example
```lua
local randomInt = random.randomInteger(1, 10)
```

### 4. `random.randomFloat(min, max)`

Generates a random floating-point number between the specified minimum and maximum values.

#### Parameters
- `min`: The minimum float value.
- `max`: The maximum float value.

#### Returns
- A random float between `min` and `max`.

#### Errors
- Throws an error if `min` is greater than `max`.

#### Example
```lua
local randomFloat = random.randomFloat(0.5, 1.5)
```

### 5. `random.shuffle(tbl)`

Randomly shuffles the elements of the provided table in place.

#### Parameters
- `tbl`: A table (array) to be shuffled.

#### Returns
- The shuffled table.

#### Example
```lua
local cards = {"Ace", "King", "Queen", "Jack"}
random.shuffle(cards)
```
