local utf8 = require("utf8")

function love.load()
    whatYouShouldType = "Yeah, this is a test."
    text = ""
    gameFont = love.graphics.newFont(20)
    wpm = 0
    love.window.setTitle("typing triumph ALPHA v0.1.0")
    
end

function love.update(dt)
    if text == "The quick brown fox jumps over the lazy dog" and whatYouShouldType =="The quick brown fox jumps over\nthe lazy dog" then
        love.timer.sleep(1)
        love.load()
        whatYouShouldType = "Anything you want, press enter to completly clear  :)"
    end
    if love.keyboard.isDown( "escape" ) then
        love.event.quit()
    end
    if love.keyboard.isDown( "return" ) then
        text = ""
        sound = love.audio.newSource("type.wav", "static") 
        sound:play()
    end
end

function love.draw()
    love.graphics.setFont(gameFont)
    love.graphics.print("Type: " ..whatYouShouldType)
    love.graphics.setFont(gameFont)
    love.graphics.print(text, 300,300)
    --love.graphics.print("Kps: " ..wpm, 0, 20) idk how to do this lmao
    if text == "Yeah, this is a test." then
        yes = love.graphics.print("You got this correct!", 100, 100)
        love.timer.sleep(1)
        love.load()
        whatYouShouldType = "The dog is a full blown bozo."
    end
    if text == "The dog is a full blown bozo." and whatYouShouldType == "The dog is a full blown bozo." then
        yes = love.graphics.print("You got this correct!", 100, 100)
        love.timer.sleep(1)
        love.load()
        whatYouShouldType = "The quick brown fox jumps over\nthe lazy dog"
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
--Nice