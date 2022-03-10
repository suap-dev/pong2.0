local Ball = {}

-- function Ball.new()
--     local self = {}
--     setmetatable{self, {}}
--     self.__index = self

--     -- implementacja
    
--     return self
-- end

function Ball.new(centerX, centerY, radius, velocity)
    local newBall = {}
    setmetatable(newBall, Ball)
    Ball.__index = newBall

    newBall.centerX = centerX
    newBall.centerY = centerY

    newBall.radius = radius
    newBall.velocity = velocity

    -- implementacja

    
    return newBall
end

function Ball:draw()
    -- love.graphics.circle(
    --     "fill",
    --     self.centerX,
    --     self.centerY,
    --     self.radius
    -- )
end


return Ball