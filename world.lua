world = {}

function world.load()
	world.Sx1 = 100
	world.Sy1 = 100
	world.Sx2 = love.graphics.getWidth() - 100
	world.Sy2 = love.graphics.getHeight() - 100
	world.mainWorld = love.physics.newWorld(world.Sx1, world.Sy1, world.Sx2, world.Sy2, 100, 0, true)
	world.BGimg = love.graphics.newImage("img/world/BGimg.png")
end

function world.backgroundDraw()
	for i = 0, love.graphics.getWidth() / world.BGimg:getWidth() do
		for j = 0, love.graphics.getHeight() / world.BGimg:getHeight() do
			love.graphics.draw(world.BGimg, i * world.BGimg:getWidth(), j * world.BGimg:getHeight())
		end
	end
end

function world.drawAll()
	world.backgroundDraw()
end

function world.updateAll(dt)
	world.backgroundDraw()
end