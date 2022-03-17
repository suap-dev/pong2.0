local Class = require("class")
--powiedmy że to ta lewa rakietka bo nie wiem czy mam robić obie w jednej klasie czy osobno

local Rocket = Class(
{
    init = function(self, world, sideRight, sideLeft, sideUp, sideDown, baseVelocityX, baseVelocityY)
        self.world = world
        self.sideRight = sideRight
        self.sideLeft = sideLeft
        self.sideUp = sideUp
        self.sideDown = sideDown
        self.velocityX = baseVelocityX
        self.velocityY =  baseVelocityY







    end
}




)
return Rocket