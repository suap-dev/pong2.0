local Class = require("class")
--powiedmy że to ta lewa rakietka bo nie wiem czy mam robić obie w jednej klasie czy osobno

local Rocket = Class(
{
<<<<<<< HEAD
    init = function(self, world, sideRight, sideLeft, sideUp, sideDown, baseVelocityX, baseVelocityY)
        self.world = world
        self.sideRight = sideRight
        self.sideLeft = sideLeft
        self.sideUp = sideUp
        self.sideDown = sideDown
        self.velocityX = baseVelocityX
        self.velocityY =  baseVelocityY







=======
    -- init = function(self, world, sideRight, sideLeft, sideUp, sideDown, baseVelocityX, baseVelocityY)
    --     self.world = world
    --     self.sideRight = sideRight
    --     self.sideLeft = sideLeft
    --     self.sideUp = sideUp
    --     self.sideDown = sideDown

    --     self.velocityX = baseVelocityX
    --     self.velocityY =  baseVelocityY,
    -- end

    init = function(self, world, upperLeftCornerX, upperLeftCornerY, width, height, baseVelocity, axis)
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
        self.world

        -- te zmienne muszą być uzupełniane
        -- przez wyliczenie poprawnych wartości
        -- korzystając z upperLeftCornerX, upperLeftCornerY, width, height
        -- każda ta zmienna ma zawierać tylko JEDNĄ liczbę, która odpowiada współrzędnej
        -- wsp x
        self.sideLeft
        self.sideRight
        --wsp y
        self.sideUpper
        self.sideBottom


        -- jedna liczba okreslajaca "predkosc w kropkach an sekunde"
        -- base velocity musi być DODATNIE. jeśli uzytkownik poda ujemne - wtedy skorzystaj z napisanej wczesniej funkcji abs
        -- funkcja abs znajduje sie w NASZYM module math
        -- zaimportuj moduł na początku plik za pomocą odpowiedniego "require"
        self.baseVelocity

        -- 1 - axis X, 2 - axis Y
        -- sprawdzic, czy uzytkownik podal odpowiedni axis,
        -- jesli tak - przypisac jego wartosc
        -- w przeciwnym wypadku na razie przypisac wartość -1
        self.axis

>>>>>>> main
    end
}




)
return Rocket