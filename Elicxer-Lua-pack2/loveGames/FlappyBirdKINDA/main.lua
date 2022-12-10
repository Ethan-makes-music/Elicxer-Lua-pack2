function love.load()
    --Player
    Player = {}
    Player.x = 50
    Player.y = 50
    Player.radius = 50
    GoingUp = false

    --Pipe DOttom
    Pipe = {}
    Pipe.x = 700
    Pipe.y = 350

    --Pipe top
    Pipe2 = {}
    Pipe2.x = 700
    Pipe2.y = -200

    --score
    score = 0
end

function love.update(dt)
    --Bird Movement
    if love.keyboard.isDown( "space" ) then
        if GoingUp == false then
            Player.y = Player.y - 69
            Player.y = Player.y + 1
            GoingUp = true
        end
    else
        Player.y = Player.y + 5
        GoingUp = false
    end

    if Player.y > 700 then
        love.load()
    end

    --Pipe Movement
    Pipe.x = Pipe.x + -3
    if Pipe.x < -50 then
        Pipe.x = 700
        Pipe.y = 350
    end

    Pipe2.x = Pipe2.x + -3
    if Pipe2.x < -50 then
        Pipe2.x = 700
        Pipe2.y = -200
    end

    --Scoring system
    if Player.x > 435 and Pipe.x < -30 then
        love.event.quit()
    end
end

function love.draw()
    --Bird lol
    love.graphics.setColor(255/255, 235/255, 42/255)
    love.graphics.circle("fill", Player.x, Player.y, Player.radius)

    --Pipe Bottom
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.rectangle("fill", Pipe.x, Pipe.y, 100, 350)

    --Pipe top
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.rectangle("fill", Pipe2.x, Pipe2.y, 100, 350)

    --score
    --love.graphics.print(score)
    love.graphics.print(Player.y)
end