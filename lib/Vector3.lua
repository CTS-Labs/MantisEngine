local Vector3 = {}
Vector3.__index = Vector3

function Vector3.new(x, y, z)
    local self = setmetatable({}, Vector3)
    self.x = x or 0
    self.y = y or 0
    self.z = z or 0
    return self
end

function Vector3:add(other)
    return Vector3.new(self.x + other.x, self.y + other.y, self.z + other.z)
end

function Vector3:subtract(other)
    return Vector3.new(self.x - other.x, self.y - other.y, self.z - other.z)
end

function Vector3:scale(scalar)
    return Vector3.new(self.x * scalar, self.y * scalar, self.z * scalar)
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
