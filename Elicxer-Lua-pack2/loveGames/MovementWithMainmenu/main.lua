function love.load()
    Player = {}
    Player.x = 50
    Player.y = 50
    Player.radius = 50

    startM = love.graphics.newImage('assets/images/start.png')
    start = {}
    start.x = 50
    start.y = 45
    start.radius = 45
    Startded = love.graphics.newImage('assets/images/lmao.png')

    --Exit stuff
    exitM = love.graphics.newImage('assets/images/exit.png')
    exit = {}
    exit.x = 50
    exit.y = 150
    exit.radius = 45

    clicked = false
    started = false
end

function love.update(dt)
    if started == true then
         --I swear I'm not yandere Dev with all of these if statements
        if love.keyboard.isDown( "w" ) or love.keyboard.isDown( "up" ) then
            Player.y = Player.y - 3
        elseif love.keyboard.isDown( "s" ) or love.keyboard.isDown( "down" ) then
            Player.y = Player.y + 3
        elseif love.keyboard.isDown( "d" ) or love.keyboard.isDown( "right" ) then
            Player.x = Player.x + 3
        elseif love.keyboard.isDown( "a" ) or love.keyboard.isDown( "left" ) then
            Player.x = Player.x - 3
        end

        if love.keyboard.isDown( "w" ) and love.keyboard.isDown("space") then
            Player.y = Player.y - 5
        elseif love.keyboard.isDown( "s" ) and love.keyboard.isDown( "space" ) then
            Player.y = Player.y + 5
        elseif love.keyboard.isDown( "d" ) and love.keyboard.isDown( "space" ) then
            Player.x = Player.x + 5
        elseif love.keyboard.isDown( "a" ) and love.keyboard.isDown( "space" ) then
            Player.x = Player.x - 5
        end

        if love.keyboard.isDown( "up" ) and love.keyboard.isDown("space") then
            Player.y = Player.y - 5
        elseif love.keyboard.isDown( "down" ) and love.keyboard.isDown( "space" ) then
            Player.y = Player.y + 5
        elseif love.keyboard.isDown( "right" ) and love.keyboard.isDown( "space" ) then
            Player.x = Player.x + 5
        elseif love.keyboard.isDown( "left" ) and love.keyboard.isDown( "space" ) then
            Player.x = Player.x - 5
        end
    end
end

function love.draw()
    love.graphics.setColor(1,0,0)
    love.graphics.circle("fill", start.x, start.y, start.radius)
    love.graphics.circle("fill", exit.x, exit.y, exit.radius)

    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(startM)
    love.graphics.draw(exitM, 0, 108)
    if clicked == true then
        love.graphics.setColor(0,0,0)
        love.graphics.circle("fill", start.x, start.y, start.radius)
        exitM = Startded
        love.graphics.circle("fill", exit.x, exit.y, exit.radius)
    end
    if started == true then
        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("fill", Player.x, Player.y, Player.radius)
    end
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then --checks to see if you are clicking the left button
        mouse2Start = distanceBetween(x, y, start.x, start.y)
        if mouse2Start < start.radius then
            clicked = true
            startM = Startded
            started = true
        end
        mouse2Exit = distanceBetween(x, y, exit.x, exit.y)
        if mouse2Exit < exit.radius then
            clicked = true
            love.event.quit()
        end
    end
end

function distanceBetween(x1, y1 ,x2 ,y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end