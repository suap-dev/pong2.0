-- local math = {
--     abs = function(number)
--         return
--     end
-- }

local math = {}

function math.absfunction(number)
    if number >= 0 then
        return number
    else
        return -number
    end
end

return math