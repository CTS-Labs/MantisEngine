# Class Module Documentation

This module provides a simple class system in Lua, allowing for the creation of classes and subclasses using metatables.

## Overview

The `Class` module contains methods for defining a class and extending it to create subclasses. It utilizes Lua's metatable features to achieve inheritance.

## Table of Contents

- [Class](#class)
  - [new](#new)
  - [extend](#extend)

## Class

### `Class:new()`

Creates a new instance of the class.

#### Returns

- **instance**: A new object that is an instance of the class.

#### Example

```lua
local MyClass = Class:new()
local instance = MyClass:new()
```

### `Class:extend()`

Creates a new subclass that inherits from the current class.

#### Returns

- **subclass**: A new class that extends the current class.

#### Example

```lua
local SubClass = MyClass:extend()
local subclassInstance = SubClass:new()
```

## Usage

To use the `Class` module, you can create a new class by calling the `new` method and extend it to create subclasses using the `extend` method.

### Example

```lua
local Class = require("Class")

-- Define a base class
local Animal = Class:new()

function Animal:speak()
    return "I am an animal."
end

-- Extend the base class
local Dog = Animal:extend()

function Dog:speak()
    return "Woof! I am a dog."
end

local myDog = Dog:new()
print(myDog:speak())  -- Output: Woof! I am a dog.
```

Feel free to modify or expand upon this documentation as needed!
