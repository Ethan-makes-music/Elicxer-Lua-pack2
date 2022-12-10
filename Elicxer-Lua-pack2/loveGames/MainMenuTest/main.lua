function love.load()
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
    music = love.audio.newSource("assets/sounds/click.wav", "static")
end

function love.update(dt)
    if love.keyboard.isDown( "escape" ) then
        love.event.quit()
    end
    if love.keyboard.isDown( "r" ) then
        love.load()
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
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then --checks to see if you are clicking the left button
        mouse2Start = distanceBetween(x, y, start.x, start.y)
        if mouse2Start < start.radius then
            clicked = true
            startM = Startded
            music:play()
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