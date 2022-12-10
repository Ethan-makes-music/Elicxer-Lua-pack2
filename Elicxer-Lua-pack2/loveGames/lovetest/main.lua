function love.load()
    love.window.setTitle("Aim trainer v0.1.0")
    target = {}
    target.x = 200
    target.y = 400
    target.radius = 50

    score = 0
    timer = 15
    timerDone = false

    --declares the new font size
    gameFont = love.graphics.newFont(40)

    --start button
    StartM = love.graphics.newImage{'assets/Images/start.png'}
    Start = {}
    Start.x = 50
    Start.y = 50
    Start.radius = 50
end

function love.draw()
    --sets the color and draws the shape / color of your choice
    love.graphics.setColor(51/255, 153/255, 255/255)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
    love.graphics.print(timer, 200, -0)
end

function love.update(dt)
    if timer <= 0 then --when the timer hits zero it will wait 5 seconds then restart the game
      timerDone = true
      love.timer.sleep(5)
      love.load()
    end
    timer = timer - dt
    if love.keyboard.isDown( "r" ) then -- if you press R it resets the game
        love.load()
    end
    if love.keyboard.isDown( "escape" ) then --if you press esc it closes the game
        love.event.quit()
    end

    -- Changes the time to the number you press and also makes the target go to its origanal pos
    if love.keyboard.isDown( "1" ) then
        timer = 10
        score = 0
        target.x = 200
        target.y = 400
    elseif love.keyboard.isDown( "2" ) then
        timer = 20
        score = 0
        target.x = 200
        target.y = 400
    elseif love.keyboard.isDown( "3" ) then
        timer = 30
        score = 0
        target.x = 200
        target.y = 400
    elseif love.keyboard.isDown( "4" ) then
        timer = 40
        score = 0
        target.x = 200
        target.y = 400
    elseif love.keyboard.isDown( "5" ) then
        timer = 50
        score = 0
        target.x = 200
        target.y = 400
    elseif love.keyboard.isDown( "6" ) then
        timer = 60
        score = 0
        target.x = 200
        target.y = 400
    end
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then --checks to see if you are clicking the left button
        local mouse2target = distanceBetween(x, y, target.x, target.y)
        if mouse2target < target.radius then
           score = score + 1
           --changes the position of the target when you click it
           target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
           target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
           sound = love.audio.newSource("click.wav", "static")
           sound:play()
        end
    end
end
--this function checks if your mouse is on the target or not
function distanceBetween(x1, y1 ,x2 ,y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end