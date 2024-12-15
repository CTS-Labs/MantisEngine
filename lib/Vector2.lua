local Vector2 = {}
Vector2.__index = Vector2

function Vector2.new(x, y)
    local self = setmetatable({}, Vector2)
    self.x = x or 0
    self.y = y or 0
    return self
end

function Vector2:add(other)
    return Vector2.new(self.x + other.x, self.y + other.y)
end

function Vector2:subtract(other)
    return Vector2.new(self.x - other.x, self.y - other.y)
end

function Vector2:scale(scalar)
    return Vector2.new(self.x * scalar, self.y * scalar)
end

function Vector2:length()
    return math.sqrt(self.x^2 + self.y^2)
end

function Vector2:normalize()
    local len = self:length()
    if len == 0 then return Vector2.new(0, 0) end
    return self:scale(1 / len)
end

function Vector2:dot(other)
    return self.x * other.x + self.y * other.y
end

function Vector2:__tostring()
    return "(" .. self.x .. ", " .. self.y .. ")"
end

return Vector2
