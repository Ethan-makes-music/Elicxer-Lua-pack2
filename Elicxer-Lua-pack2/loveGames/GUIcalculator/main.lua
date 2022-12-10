function love.load()
    --1 stuff
    Image1M = love.graphics.newImage{'assets/Images/1.png'}
    Image1 = {}
    Image1.x = 50
    Image1.y = 50
    Image1.radius = 50
    
    --2 stuff
    Image2M = love.graphics.newImage{'assets/Images/2.png'}
    Image2 = {}
    Image2.x = 150
    Image2.y = 50
    Image2.radius = 50

    --3 stuff
    Image3M = love.graphics.newImage{'assets/Images/3.png'}
    Image3 = {}
    Image3.x = 265
    Image3.y = 50
    Image3.radius = 50

    --4 stuff
    Image4M = love.graphics.newImage{'assets/Images/4.png'}
    Image4 = {}
    Image4.x = 50
    Image4.y = 162
    Image4.radius = 50

    --5 stuff
    Image5M = love.graphics.newImage{'assets/Images/5.png'}
    Image5 = {}
    Image5.x = 150
    Image5.y = 162
    Image5.radius = 50

    --6 stuff
    Image6M = love.graphics.newImage{'assets/Images/6.png'}
    Image6 = {}
    Image6.x = 265
    Image6.y = 162
    Image6.radius = 50

    --7 stuff
    Image7M = love.graphics.newImage{'assets/Images/7.png'}
    Image7 = {}
    Image7.x = 50
    Image7.y = 272
    Image7.radius = 50

    --8 stuff
    Image8M = love.graphics.newImage{'assets/Images/8.png'}
    Image8 = {}
    Image8.x = 150
    Image8.y = 272
    Image8.radius = 50

    --9 stuff
    Image9M = love.graphics.newImage{'assets/Images/9.png'}
    Image9 = {}
    Image9.x = 265
    Image9.y = 272
    Image9.radius = 50

    --plus stuff
    ImagePM = love.graphics.newImage{'assets/Images/plus.png'}
    ImageP = {}
    ImageP.x = 385
    ImageP.y = 170
    ImageP.radius = 50

    --equal stuff
    ImageEqM = love.graphics.newImage{'assets/Images/eq.png'}
    ImageEq = {}
    ImageEq.x = 380
    ImageEq.y = 50
    ImageEq.radius = 50

    --times stuff
    ImageTM = love.graphics.newImage{'assets/Images/times.png'}
    ImageT = {}
    ImageT.x = 385
    ImageT.y = 272
    ImageT.radius = 50

    --devision stuff
    ImageDM = love.graphics.newImage{'assets/Images/devide.png'}
    ImageD = {}
    ImageD.x = 385
    ImageD.y = 372
    ImageD.radius = 50

    --clear stuff
    ImageCM = love.graphics.newImage{'assets/Images/clear.png'}
    ImageC = {}
    ImageC.x = 385
    ImageC.y = 472
    ImageC.radius = 50

    --text stuff
    text = 0
    AddSecondText = false
    text2 = 0
    answer = text + text2
    printanswer = false
    fontSize = love.graphics.newFont(40)
    scndnumberadded = false
    --Operater stuff (add plus etc)
    TimesOPpressed = false
    PlusOPpress = false
    DevideOPpress = false
end

function love.update(dt)
    if love.keyboard.isDown("r") then
        love.load()
    end
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end

function love.draw()
    --Image 1 stuff
    love.graphics.circle("fill", Image1.x, Image1.y, Image1.radius)
    love.graphics.draw(Image1M)
    --Image 2 stuff
    love.graphics.circle("fill", Image2.x, Image2.y, Image2.radius)
    love.graphics.draw(Image2M, 100, 0)

    --Image 3 stuff
    love.graphics.circle("fill", Image3.x, Image3.y, Image3.radius)
    love.graphics.draw(Image3M, 200, 0)

    --Image 4 stuff
    love.graphics.circle("fill", Image4.x, Image4.y, Image3.radius)
    love.graphics.draw(Image4M, 0, 110)

    --Image 5 stuff
    love.graphics.circle("fill", Image5.x, Image5.y, Image5.radius)
    love.graphics.draw(Image5M, 100, 110)

    --Image 6 stuff
    love.graphics.circle("fill", Image6.x, Image6.y, Image6.radius)
    love.graphics.draw(Image6M, 200, 110)

    --Image 7 stuff
    love.graphics.circle("fill", Image7.x, Image7.y, Image7.radius)
    love.graphics.draw(Image7M, 0, 220)

    --Image 8 stuff
    love.graphics.circle("fill", Image8.x, Image8.y, Image8.radius)
    love.graphics.draw(Image8M, 100, 220)

    --Image 9 stuff
    love.graphics.circle("fill", Image9.x, Image9.y, Image9.radius)
    love.graphics.draw(Image9M, 200, 220)

    --Plus stuff
    love.graphics.circle("fill", ImageP.x, ImageP.y, ImageP.radius)
    love.graphics.draw(ImagePM, 330, 110)

    --Equal stuff
    love.graphics.circle("fill", ImageEq.x, ImageEq.y, ImageEq.radius)
    love.graphics.draw(ImageEqM, 330, 0)

    --times stuff
    love.graphics.circle("fill", ImageT.x, ImageT.y, ImageT.radius)
    love.graphics.draw(ImageTM, 330, 210)

    --devision stuff
    love.graphics.circle("fill", ImageD.x, ImageD.y, ImageD.radius)
    love.graphics.draw(ImageDM, 330, 310)

    --clear stuff
    love.graphics.circle("fill", ImageC.x, ImageC.y, ImageC.radius)
    love.graphics.draw(ImageCM, 330, 420)--nice

    --idk at this point
    love.graphics.print(text,540)
    love.graphics.setFont(fontSize)
    if scndnumberadded == true and PlusOPpress == true then
        love.graphics.print("+", 585)
        love.graphics.print(text2, 650, 0)
    elseif scndnumberadded == true and TimesOPpressed == true then
        love.graphics.print("X", 585)
        love.graphics.print(text2, 650, 0)
    elseif scndnumberadded == true and DevideOPpress == true then
        love.graphics.print("÷", 585)
        love.graphics.print(text2, 650, 0)
    end
    if printanswer == true and PlusOPpress == true then
        love.graphics.print("=", 700, 0)
        love.graphics.print(text + text2, 750, 0)
    elseif printanswer == true and TimesOPpressed == true then
        love.graphics.print("=", 700, 0)
        love.graphics.print(text * text2, 750, 0)
    elseif printanswer == true and DevideOPpress == true then
        love.graphics.print("=", 700, 0)
        love.graphics.print(text / text2, 750, 0)
    end
end

--For the 1 button
function love.mousepressed( x, y, button, istouch, presses ) --I swear I'm not yandere dev
    if button == 1 then --checks to see if you are clicking the left button
        if AddSecondText == false then
            mouse2Image1 = distanceBetween(x, y, Image1.x, Image1.y)
            if mouse2Image1 < Image1.radius then
                text = text + 1
            end
            mouse2Image2 = distanceBetween(x, y, Image2.x, Image2.y)
            if mouse2Image2 < Image2.radius then
               text = text + 2
            end
            mouse2ImageP = distanceBetween(x, y, ImageP.x, ImageP.y)
            if mouse2ImageP < ImageP.radius then
               AddSecondText = true
               scndnumberadded = true
               PlusOPpress = true
            end
            mouse2ImageT = distanceBetween(x, y, ImageT.x, ImageT.y)
            if mouse2ImageT < ImageT.radius then
                TimesOPpressed = true
                scndnumberadded = true
                AddSecondText = true
            end
            mouse2ImageD = distanceBetween(x, y, ImageD.x, ImageD.y)
            if mouse2ImageD < ImageD.radius then
                DevideOPpress = true
                scndnumberadded = true
                AddSecondText = true
            end
            mouse2Clear = distanceBetween(x, y, ImageC.x, ImageC.y)
            if mouse2Clear < ImageC.radius then
                love.load()
            end
            mouse2Image3 = distanceBetween(x, y, Image3.x, Image3.y)
            if mouse2Image3 < Image3.radius then
                text = text + 3
            end
            mouse2Image4 = distanceBetween(x, y, Image4.x, Image4.y)
            if mouse2Image4 < Image4.radius then
                text = text + 4
            end
            mouse2Image5 = distanceBetween(x, y, Image5.x, Image5.y)
            if mouse2Image5 < Image5.radius then
                text = text + 5
            end
            mouse2Image6 = distanceBetween(x, y, Image6.x, Image6.y)
            if mouse2Image6 < Image6.radius then
                text = text + 6
            end
            mouse2Image7 = distanceBetween(x, y, Image7.x, Image7.y)
            if mouse2Image7 < Image7.radius then
                text = text + 7
            end
            mouse2Image8 = distanceBetween(x, y, Image8.x, Image8.y)
            if mouse2Image8 < Image8.radius then
                text = text + 8
            end
            mouse2Image9 = distanceBetween(x, y, Image9.x, Image9.y)
            if mouse2Image9 < Image9.radius then
                text = text + 9
            end
        -- if + button pressed
        elseif PlusOPpress == true then --This is for when the plus button is pressed
            mouse2Image1 = distanceBetween(x, y, Image1.x, Image1.y)
            if mouse2Image1 < Image1.radius then
                text2 = text2 + 1
            end
            mouse2Image2 = distanceBetween(x, y, Image2.x, Image2.y)
            if mouse2Image2 < Image2.radius then
               text2 = text2 + 2
            end
            mouse2Image3 = distanceBetween(x, y, Image3.x, Image3.y)
            if mouse2Image3 < Image3.radius then
                text2 = text2 + 3
            end
            mouse2ImageEQ = distanceBetween(x, y, ImageEq.x, ImageEq.y)
            if mouse2ImageEQ < ImageEq.radius then
               printanswer = true
            end
            mouse2Clear = distanceBetween(x, y, ImageC.x, ImageC.y)
            if mouse2Clear < ImageC.radius then
                love.load()
            end
            mouse2Image4 = distanceBetween(x, y, Image4.x, Image4.y)
            if mouse2Image4 < Image4.radius then
                text2 = text2 + 4
            end
            mouse2Image5 = distanceBetween(x, y, Image5.x, Image5.y)
            if mouse2Image5 < Image5.radius then
                text2 = text2 + 5
            end
            mouse2Image6 = distanceBetween(x, y, Image6.x, Image6.y)
            if mouse2Image6 < Image6.radius then
                text2 = text2 + 6
            end
            mouse2Image7 = distanceBetween(x, y, Image7.x, Image7.y)
            if mouse2Image7 < Image7.radius then
                text2 = text2 + 7
            end
            mouse2Image8 = distanceBetween(x, y, Image8.x, Image8.y)
            if mouse2Image8 < Image8.radius then
                text2 = text2 + 8
            end
            mouse2Image9 = distanceBetween(x, y, Image9.x, Image9.y)
            if mouse2Image9 < Image9.radius then
                text2 = text2 + 9
            end
        --If times button is pressed
        elseif TimesOPpressed == true then
            mouse2Image1 = distanceBetween(x, y, Image1.x, Image1.y)
            if mouse2Image1 < Image1.radius then
                text2 = text2 + 1
            end
            mouse2Image2 = distanceBetween(x, y, Image2.x, Image2.y)
            if mouse2Image2 < Image2.radius then
               text2 = text2 + 2
            end
            mouse2Image3 = distanceBetween(x, y, Image3.x, Image3.y)
            if mouse2Image3 < Image3.radius then
                text2 = text2 + 3
            end
            mouse2ImageEQ = distanceBetween(x, y, ImageEq.x, ImageEq.y)
            if mouse2ImageEQ < ImageEq.radius then
               printanswer = true
            end
            mouse2Clear = distanceBetween(x, y, ImageC.x, ImageC.y)
            if mouse2Clear < ImageC.radius then
                love.load()
            end
            mouse2Image4 = distanceBetween(x, y, Image4.x, Image4.y)
            if mouse2Image4 < Image4.radius then
                text2 = text2 + 4
            end
            mouse2Image5 = distanceBetween(x, y, Image5.x, Image5.y)
            if mouse2Image5 < Image5.radius then
                text2 = text2 + 5
            end
            mouse2Image6 = distanceBetween(x, y, Image6.x, Image6.y)
            if mouse2Image6 < Image6.radius then
                text2 = text2 + 6
            end
            mouse2Image7 = distanceBetween(x, y, Image7.x, Image7.y)
            if mouse2Image7 < Image7.radius then
                text2 = text2 + 7
            end
            mouse2Image8 = distanceBetween(x, y, Image8.x, Image8.y)
            if mouse2Image8 < Image8.radius then
                text2 = text2 + 8
            end
            mouse2Image9 = distanceBetween(x, y, Image9.x, Image9.y)
            if mouse2Image9 < Image9.radius then
                text2 = text2 + 9
            end
        --If Devide button is pressed
        elseif DevideOPpress == true then
            mouse2Image1 = distanceBetween(x, y, Image1.x, Image1.y)
            if mouse2Image1 < Image1.radius then
                text2 = text2 + 1
            end
            mouse2Image2 = distanceBetween(x, y, Image2.x, Image2.y)
            if mouse2Image2 < Image2.radius then
               text2 = text2 + 2
            end
            mouse2Image3 = distanceBetween(x, y, Image3.x, Image3.y)
            if mouse2Image3 < Image3.radius then
                text2 = text2 + 3
            end
            mouse2ImageEQ = distanceBetween(x, y, ImageEq.x, ImageEq.y)
            if mouse2ImageEQ < ImageEq.radius then
               printanswer = true
            end
            mouse2Clear = distanceBetween(x, y, ImageC.x, ImageC.y)
            if mouse2Clear < ImageC.radius then
                love.load()
            end
            mouse2Image4 = distanceBetween(x, y, Image4.x, Image4.y)
            if mouse2Image4 < Image4.radius then
                text2 = text2 + 4
            end
            mouse2Image5 = distanceBetween(x, y, Image5.x, Image5.y)
            if mouse2Image5 < Image5.radius then
                text2 = text2 + 5
            end
            mouse2Image6 = distanceBetween(x, y, Image6.x, Image6.y)
            if mouse2Image6 < Image6.radius then
                text2 = text2 + 6
            end
            mouse2Image7 = distanceBetween(x, y, Image7.x, Image7.y)
            if mouse2Image7 < Image7.radius then
                text2 = text2 + 7
            end
            mouse2Image8 = distanceBetween(x, y, Image8.x, Image8.y)
            if mouse2Image8 < Image8.radius then
                text2 = text2 + 8
            end
            mouse2Image9 = distanceBetween(x, y, Image9.x, Image9.y)
            if mouse2Image9 < Image9.radius then
                text2 = text2 + 9
            end
        end
    end
end

--this function checks if your mouse is on something or not
function distanceBetween(x1, y1 ,x2 ,y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end 