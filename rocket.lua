local Class = require("class")
local math = require("math")
--powiedmy że to ta lewa rakietka bo nie wiem czy mam robić obie w jednej klasie czy osobno

local Rocket = Class()

-- konstruktor 
function Rocket:init(
        world,
        upperLeftCornerX, upperLeftCornerY,
        width, height,
        baseVelocity,
        movementAxis, -- "X" or "Y"
        movementKey1, movementKey2
    )
    -- HOMEWORK:
    -- jako pracę domową musisz uzupełnić ten konstruktor (czyli tę funkcję init)
    -- Twoim zadaniem jest przypisać odpowiednie wartości zmiennym, które zadeklarowaliśmy pod spodem
    -- nie dodawaj do self żadnych innych/dodatkowych zmiennych
    -- możesz używać zmiennych lokalnych jeśli potrzebujesz coś tymczasowego w trakcie obliczeń

    -- przyklad. zalozmy ze chcemy obliczyc pole naszej paletki i jej "masę" i zapisać jako property
    -- self.mass
    -- property to "zmienna wewnątrz obiektu (danej klasy)"
    local density = 2
    local area = width * height

    self.mass = area * density
    -- zmienne local zostaną usunięte z pamięci po skonstruowaniu obiektu
    -- wewnątrz obiektu będzie dostępna tylko self.mass

    -- oblicz/uzupełnij poniższe properties:
    self.world = world

    -- te zmienne muszą być uzupełniane
    -- przez wyliczenie poprawnych wartości
    -- korzystając z upperLeftCornerX, upperLeftCornerY, width, height
    -- każda ta zmienna ma zawierać tylko JEDNĄ liczbę, która odpowiada współrzędnej
    -- wsp x
    self.left = upperLeftCornerX
    self.right = upperLeftCornerX + width
    --wsp y
    self.top = upperLeftCornerY
    self.bottom = upperLeftCornerY + height


    -- jedna liczba okreslajaca "predkosc w kropkach an sekunde"
    -- base velocity musi być DODATNIE. jeśli uzytkownik poda ujemne
    -- wtedy skorzystaj z napisanej wczesniej funkcji abs
    -- funkcja abs znajduje sie w NASZYM module math
    -- zaimportuj moduł na początku plik za pomocą odpowiedniego "require"
    self.baseVelocity = math.abs(baseVelocity)

    -- "X" lub "Y"
    -- sprawdzic, czy uzytkownik podal odpowiedni axis,
    -- jesli tak - przypisac jego wartosc
    -- w przeciwnym wypadku na razie przypisac wartość nil

    if movementAxis == "X" or movementAxis == "Y" then
        self.movementAxis = movementAxis
    else 
        self.movementAxis = nil
    end

    -- NASTEPNE ZAJĘCIA!
    -- jak sprawdzić czy użytkownik KLASY
    -- podał właściwe klawisze
    self.key1 = movementKey1
    self.key2 = movementKey2
end

function Rocket:draw()
    -- left, right, up, down
    love.graphics.polygon(
        "fill",
        self.left, self.top,
        self.right, self.top,
        self.right, self.bottom,
        self.left, self.bottom
    )
end

function Rocket:movement()
    -- dt?

    -- tutaj chcesz zrobić "keypressed" i obsłużyć kierunki
    -- jaki jest movement axis?
    -- "X"
        -- jeśli naciśnięty key1 wtedy...
        -- jeśli naciśnięty key2 wtedy...
    -- "Y"
        -- ...
        -- ...

    -- left = left - velocity*dt
end


return Rocket