jim = {}

function jim.load()
	jim.loadVars()
	jim.loadImgs()
end

function jim.loadVars()
	jim.x = love.graphics.getWidth() / 2
	jim.y = world.Sy1
	jim.xvel = 0
	jim.yvel = 0
	jim.friction = 1
	jim.speed = 50
	jim.gravity = 1
end

function jim.loadImgs()
	jim.imgBody = love.graphics.newImage("img/jim/Still.png")
end

function jim.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(jim.imgBody, jim.x, jim.y)
end

function jim.physics(dt)
	jim.y = jim.y + jim.yvel * dt
	jim.yvel = jim.yvel + world.gravity * jim.gravity * dt
end

function jim.boundary(dt)
	if jim.y + jim.imgBody:getHeight() > world.Sy2 then
		jim.y = world.Sy2 + jim.imgBody:getHeight()
		jim.yvel = 0
	end
	if jim.y + jim.imgBody:getHeight() < world.Sy1 then
		jim.y = world.Sy1 + jim.imgBody:getHeight()
		jim.yvel = 0
	end
end

function jim.move(dt)
--[[
	if love.keyboard.isDown('right') and
	jim.xvel < jim.speed then
		jim.xvel = jim.xvel + jim.speed * dt
	end
	
	if love.keyboard.isDown('left') and
	jim.xvel > -jim.speed then
		jim.xvel = jim.xvel - jim.speed * dt
	end
--]]
	
	if love.keyboard.isDown('up') and
	jim.yvel > -jim.speed and
	jim.y < world.Sy2 then
		jim.yvel = jim.yvel - jim.speed * dt
	end
end

function jim.drawAll()
	jim.draw()
end

function jim.updateAll(dt)
	jim.move(dt)
	jim.physics(dt)
	jim.boundary(dt)
end