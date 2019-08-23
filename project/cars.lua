Car = {}
function Car:load(x,y,image)
	self.car_load_image = love.graphics.newImage(image)
	self.x = x
	self.y = y
end

function Car:draw()
	love.graphics.draw(self.car_load_image, self.x, self.y, 0, 1, 1, 0, 0)
end
