jim = {}

function jim.load()
	jim.loadVars()
	jim.loadImgs()
end

function jim.loadVars()
	jim.x = 0
	jim.y = 0
	jim.xvel = 0
	jim.yvel = 0
	jim.friction = 1
	jim.speed = 100
end

function jim.loadImgs()
	jim.imgBody = love.graphics.newImage("img/jim/Still.png")
end

function jim.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(jim.imgBody, jim.x, jim.y)
end

function jim.physics(dt)
	jim.x = jim.x + jim.xvel * dt
	jim.y = jim.y + jim.yvel * dt
	jim.xvel = jim.xvel * (1 - math.min(dt * jim.friction))
end

function jim.move(dt)
	if love.keyboard.isDown('right') and
	jim.xvel < jim.speed then
		jim.xvel = jim.xvel + jim.speed * dt
	end
	
	if love.keyboard.isDown('left') and
	jim.xvel > -jim.speed then
		jim.xvel = jim.xvel - jim.speed * dt
	end
end

function jim.drawAll()
	jim.draw()
end

function jim.updateAll(dt)
	jim.move(dt)
	jim.physics(dt)
end