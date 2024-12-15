local Vector2 = {}
Vector2.__index = Vector2

function Vector2.new(x, y)
    local self = setmetatable({}, Vector2)
    self.x = x or 0
    self.y = y or 0
    return self
end

function Vector2.__add(a, b)
    if getmetatable(b) == Vector2 then
        return Vector2.new(a.x + b.x, a.y + b.y)
    elseif getmetatable(b) == Vector3 then
        return Vector3.new(a.x + b.x, a.y + b.y, b.z)
    end
end

function Vector2.__sub(a, b)
    if getmetatable(b) == Vector2 then
        return Vector2.new(a.x - b.x, a.y - b.y)
    elseif getmetatable(b) == Vector3 then
        return Vector3.new(a.x - b.x, a.y - b.y, b.z)
    end
end

function Vector2.__mul(a, b)
    if type(b) == "number" then
        return Vector2.new(a.x * b, a.y * b)
    elseif getmetatable(b) == Vector2 then
        return a.x * b.x + a.y * b.y 
    end
end

function Vector2.__div(a, b)
    if type(b) == "number" then
        return Vector2.new(a.x / b, a.y / b)
    end
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
