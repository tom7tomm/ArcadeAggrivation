require "obj/jim"

function love.load()
	love.graphics.setBackgroundColor(0, 0, 0)
	jim.load()
end

function love.update(dt)
	jim.updateAll(dt)
end

function love.draw()
	jim.drawAll()
end