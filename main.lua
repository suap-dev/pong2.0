-- include modules
local Ball = require("Ball")
local Rocket = require("Rocket")


-- variables for our "Actors"
-- we declare them before running anything
local ball1, ball2, ball3
-- local rocket

local world = {}
world.rockets = {}

local leftRocket, rightRocket

function love.load()
    world.width, world.height = love.graphics.getDimensions()

    world.rockets.left = Rocket(
        world,
        30 , world.height/2,
        20, 80,
        400, "Y",
        "w", "s" -- tu podalismy rakiecie naszej jakie klawisze slużą do poruszania
    )
    -- NAPRAW: d-_-b
    world.rockets.right = nil

    -- Ball(self, world, centerX, centerY, radius, baseVelocityX, baseVelocityY)
    ball1 = Ball(
        world,
        world.width/2, world.height/22, 40,
        -150, -150
    )
    ball2 = Ball(world, 92348, 12398431, 20, 200, 200)
    -- ball3 = Ball(world, 400, 300, 200, 300, 300)

    -- world.rockets.left = leftRocket
    -- rightRocket = Rocket()

end

function love.update(dt) -- dt = czas, który upłynął od ostatniego uruchomienia :update()
    -- sprawdzenie zmian (tu glówną zmianą jest dt)
    -- wprowadzenie zmian/obliczenie stuffu
    world.rockets.left:playerMovement(dt) -- a tu dodatkowo jeszcze sprawdzenie czy klawisze.
    ball1:update(dt)
    ball2:update(dt)
end

function love.draw()
    ball1:draw()    
    ball2:draw()
    world.rockets.left:draw()
end
