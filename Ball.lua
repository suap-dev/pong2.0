local Class = require("class")

local Ball = Class(
    {
        init = function(self, world, centerX, centerY, radius, baseVelocityX, baseVelocityY)
            self.world = world            

            -- HW1
            -- jeśli piłka spawni się częściowo poza krawędzią świata
            -- zespawnij ją zaraz przy tej krawędzi            
            if centerY - radius < 0 then
                self.centerY = radius
            elseif centerY + radius > world.height then
                self.centerY = world.height - radius
            else
                self.centerY = centerY
            end

            if centerX - radius < 0 then
                self.centerX = radius
            elseif centerX + radius > world.width then
                self.centerX = world.width - radius
            else
                self.centerX = centerX
            end            

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

            -- if the ball is aproaching a certain wall (velocity check)
            -- AND it's close enough to bounce
            -- MAKE IT BOUNCE (change velocity)
            if self.velocityX > 0
            and self.centerX + self.radius >= self.world.width then
                self.velocityX = -self.velocityX
            end

            if self.velocityX < 0 
            and self.centerX - self.radius <= 0 then
                self.velocityX = -self.velocityX
            end

            -- HW2
            if
            self.velocityY > 0 and
            self.centerY + self.radius >= self.world.height then
                self.velocityY = -self.velocityY
            end

            if
            self.velocityY < 0 and
            self.centerY - self.radius <= 0 then
                self.velocityY = -self.velocityY
            end

            -- TODO: change this hotfix
            -- code it as a part of the ball constructor
            -- if self.centerY - self.radius < 0 then
            --     self.centerY = 0 + self.radius
            -- end 
        end

    }
)

return Ball

-- {
--     init,
--     draw,
--     up

-- }
