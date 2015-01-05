world = {}

function world.load()
	Sx1 = 100
	Sy1 = 100
	Sx2 = love.graphics.getWidth() - 100
	Sy2 = love.graphics.getHeight() - 100
	mainWorld = love.physics.newWorld(Sx1, Sy1, Sx2, Sy2, 100, 0, true)
end

