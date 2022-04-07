-- include modules
local Ball = require("Ball")
local Rocket = require("Rocket")

-- variables for our "Actors"
-- we declare them before running anything
local ball1, ball2, ball3

local world = {}
world.rockets = {}

local leftRocket, rightRocket

function love.load()
    world.width, world.height = love.graphics.getDimensions()

    -- Ball(self, world, centerX, centerY, radius, baseVelocityX, baseVelocityY)
    ball1 = Ball(world, 11,12,100, 100, 100)
    ball2 = Ball(world, 92348, 12398431, 20, 200, 200)
    ball3 = Ball(world, 400, 300, 200, 300, 300)
    

    leftRocket = Rocket(
        world,
        10, 10,
        20, 40,
        100, "Y",
        "w", "s" -- tu podalismy rakiecie naszej jakie klawisze slużą do poruszania
    )
    -- ball1 = Ball(world, 11,12,100, 100, 100, leftRocket)

    -- world.rockets.left = leftRocket
    -- rightRocket = Rocket()

end

function love.update(dt) -- dt = czas, który upłynął od ostatniego uruchomienia :update()
    -- sprawdzenie zmian (tu glówną zmianą jest dt)
    -- wprowadzenie zmian/obliczenie stuffu
    leftRocket:playerMovement(dt) -- a tu dodatkowo jeszcze sprawdzenie czy klawisze.
    ball1:update(dt)
    ball2:update(dt)
end

function love.draw()
    ball1:draw()    
    ball2:draw()
    leftRocket:draw()
end
