local utf8 = require("utf8")
--Big windows size go brrrrrrrrr
function love.load()
    text = ""
    Font = love.graphics.newFont(30)
    message1image = love.graphics.newImage{'messages/1.png'}
    message2image = love.graphics.newImage{'messages/2.png'}
    message1t = true
    message1 = {}
    message1.x = 340
    message1.y = 255
    message1.radius = 80
    nse = love.audio.newSource("NSE.mp3", "static")
    send = love.audio.newSource("send.mp3", "static")
    nse:play()
end

function love.update(dt)
end

function love.draw()
    love.graphics.draw(message1image)

    love.graphics.setFont(Font)
    love.graphics.setColor(0,0,0)
    love.graphics.print(text, 300, 300)

    love.graphics.setColor(1,1,1)
    if text == "Hey!" and message1t == true then
        love.graphics.draw(message2image)
    end
end

function love.textinput(t)
    text = text .. t
    sound = love.audio.newSource("type.wav", "static")
    sound:play()
end

function love.keypressed(key) -- I totally didn't steal this :)
    if key == "backspace" then
        sound = love.audio.newSource("type.wav", "static") -- when you press backspace it makes a noise
        sound:play()
        local byteoffset = utf8.offset(text, -1)
        
        --[[
            This thing of code below this makes it so when you do press backspace
            it gets rid of a character
        ]]
        if byteoffset then 
            text = string.sub(text, 1, byteoffset - 1)
        end
    end
end