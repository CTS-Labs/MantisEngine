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
