local Class = require("class")

local Ball = Class(
    {
        init = function(self, world, centerX, centerY, radius, baseVelocityX, baseVelocityY)
            self.world = world

            -- HW1
            -- jeśli piłka spawni się częściowo poza krawędzią świata
            -- zespawnij ją zaraz przy tej krawędzi
            self.centerX = centerX
            self.centerY = centerY
            self.radius = radius
            self.velocityX = baseVelocityX
            self.velocityY = baseVelocityY
        end,

        draw = function(self)
            love.graphics.circle("fill", self.centerX, self.centerY, self.radius)
            love.graphics.print("vx: " .. self.velocityX, 0, 0)
            love.graphics.print("vy: " .. self.velocityY, 0, 50)
            love.graphics.print("cx: " .. self.centerX, 0, 100)
            love.graphics.print("cy: " .. self.centerY, 0, 150)
            love.graphics.print("w: " .. self.world.width, 0, 200)
            
        end,

        update = function(self, dt)

            self.centerX = self.centerX + (self.velocityX * dt)
            self.centerY = self.centerY + (self.velocityY * dt)

            if self.velocityX > 0
            and self.centerX + self.radius >= self.world.width then
                self.velocityX = -self.velocityX
            end

            if self.velocityX < 0 
            and self.centerX - self.radius <= 0 then
                self.velocityX = -self.velocityX
            end

            -- HW2
            if self.centerY + self.radius >= self.world.height then
                self.velocityY = -self.velocityY
            end
            if self.centerY - self.radius <= 0 then
                self.velocityY = -self.velocityY
            end
        end
    }
)

return Ball

-- {
--     init,
--     draw,
--     up

-- }
