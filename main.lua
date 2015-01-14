require "obj/jim"
require "world"

function love.load()
	love.graphics.setBackgroundColor(0, 0, 0)
	world.load()
	jim.load()
end

function love.update(dt)
	-- if the esc key is pressed, exit the game
	function love.keypressed(key)
	   if key == "escape" then
		  love.event.quit()
	   end
	end
	jim.updateAll(dt)
	world.updateAll(dt)
end

function love.draw()
	world.drawAll()
	jim.drawAll()
end