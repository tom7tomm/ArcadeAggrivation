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
	jim.friction = 10
end

function jim.loadImgs()
	jim.imgBody = love.graphics.newImage("img/jim/Still.png")
end

function jim.drawAll()
	
end

function jim.updateAll()
	
end