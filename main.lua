-- include modules
local Ball = require("Ball")

-- variables for our "Actors"
-- we declare them before running anything
local ball1
local world = {}

function love.load()
    world.width, world.height = love.graphics.getDimensions()

    -- Ball(self, world, centerX, centerY, radius, baseVelocityX, baseVelocityY)
    ball1 = Ball(world, 11,12,100, 100, 100)
    ball2 = Ball(world, 92348, 12398431, 20, 200, 200)
    ball3 = Ball(world, 400, 300, 200, 300, 300)
end

function love.update(dt)
    ball1:update(dt)
    ball2:update(dt)
end

function love.draw()
    ball1:draw()
    ball2:draw()
end
