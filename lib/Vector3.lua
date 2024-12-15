local Vector3 = {}
Vector3.__index = Vector3

function Vector3.new(x, y, z)
    local self = setmetatable({}, Vector3)
    self.x = x or 0
    self.y = y or 0
    self.z = z or 0
    return self
end

function Vector3.__add(a, b)
    if getmetatable(b) == Vector3 then
        return Vector3.new(a.x + b.x, a.y + b.y, a.z + b.z)
    elseif getmetatable(b) == Vector2 then
        return Vector3.new(a.x + b.x, a.y + b.y, a.z)
    end
end

function Vector3.__sub(a, b)
    if getmetatable(b) == Vector3 then
        return Vector3.new(a.x - b.x, a.y - b.y, a.z - b.z)
    elseif getmetatable(b) == Vector2 then
        return Vector3.new(a.x - b.x, a.y - b.y, a.z)
    end
end

function Vector3.__mul(a, b)
    if type(b) == "number" then
        return Vector3.new(a.x * b, a.y * b, a.z * b)
    elseif getmetatable(b) == Vector3 then
        return a:dot(b)
    end
end

function Vector3.__div(a, b)
    if type(b) == "number" then
        return Vector3.new(a.x / b, a.y / b, a.z / b)
    end
end

function Vector3:length()
    return math.sqrt(self.x^2 + self.y^2 + self.z^2)
end

function Vector3:normalize()
    local len = self:length()
    if len == 0 then return Vector3.new(0, 0, 0) end
    return self:scale(1 / len)
end

function Vector3:dot(other)
    return self.x * other.x + self.y * other.y + self.z * other.z
end

function Vector3:cross(other)
    return Vector3.new(
        self.y * other.z - self.z * other.y,
        self.z * other.x - self.x * other.z,
        self.x * other.y - self.y * other.x
    )
end

function Vector3:__tostring()
    return "(" .. self.x .. ", " .. self.y .. ", " .. self.z .. ")"
end

return Vector3
