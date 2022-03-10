-- include modules
local Ball = require("Ball")

-- variables for our "Actors"
-- we declare them before running anything
local ball1
local world = {}

function love.load()
    world.width, world.height = love.graphics.getDimensions( )
    ball1 = Ball(world, 11,12,100, 100, 100)
end

function love.update(dt)
    ball1:update(dt)
end

function love.draw()
    ball1:draw()
end
