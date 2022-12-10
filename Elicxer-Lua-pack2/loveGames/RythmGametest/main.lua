function love.load()
    --Note left
    CirleNoteLX = 300
    CirleNoteLY = 200

    --Note right
    CirleNoteRX = 500
    CirleNoteRY = 200

    --Hitbox note stuff
    HitboxLX = 300
    HitboxLY = 500
    HitboxRY = 300
    HitboxRX = 500

    --score stuff
    score = 0
end

function love.update(dt)
    CirleNoteLY = CirleNoteLY + 5
    if CirleNoteLY >= HitboxLY and love.keyboard.isDown("d") then
        score = score + 1
    end
    CirleNoteRY = CirleNoteRY + 4
    if CirleNoteRY >= HitboxRY and love.keyboard.isDown("f") then
        score = score + 1
    end
    if CirleNoteLY >= 700 and CircleNoteRY >= 700 then
        love.event.quit()
    end
end

function love.draw()
    --Note stuff
    love.graphics.circle("fill", CirleNoteLX, CirleNoteLY, 50)
    love.graphics.circle("fill", CirleNoteRX, CirleNoteRY, 50)
    --Hitbox stuff
    love.graphics.circle("line", HitboxLX, HitboxLY, 50)
    love.graphics.circle("line", HitboxRX, HitboxRY, 50)
    love.graphics.print(score)
end