local Class = {}
Class.__index = Class

function Class:new()
    local instance = setmetatable({}, self)
    return instance
end

function Class:extend()
    local subclass = setmetatable({}, { __index = self })
    subclass.super = self
    return subclass
end

return Class
