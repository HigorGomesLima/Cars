function love.load()
	background = love.graphics.newImage("background_v2.png")
	start_button = love.graphics.newImage("start_btn.png")
	car_1 = {x = 0,y = 0,image = love.graphics.newImage("1.png")}
	love.window.setFullscreen(true,"desktop")
	frame = 0
	start_cond = true

end
function love.update(dt)
	frame = frame+dt
	if frame*3>=1 then
		start_cond = not(start_cond)
		frame = 0
		car_1.x = 0
		car_1.y = 0
	elseif frame*3>=0.8 then
		car_1.y = car_1.y-1.5
		--car_1.x = car_1.x+1
	elseif frame*3>=0.6 then
		car_1.x = car_1.x+1.5
		car_1.y = car_1.y+1.5
	elseif frame*3>=0.4 then
		car_1.y = car_1.y-1.5
	elseif frame*3>=0.2 then
		car_1.x = car_1.x-1.5
		car_1.y = car_1.y+1.5
	end
end
function love.draw()
		_, _,flags = love.window.getMode()
		w,h = love.window.getDesktopDimensions(flags.display)
    	love.graphics.draw(background,0,0,0,(w/2048),(h/1750),0,0)
    	love.graphics.draw(background,0,(350*h/1750*1),0,(w/2048),(h/1750),0,0) 
    	love.graphics.draw(background,0,(350*h/1750*2),0,(w/2048),(h/1750),0,0) 
    	love.graphics.draw(background,0,(350*h/1750*3),0,(w/2048),(h/1750),0,0)     
    	love.graphics.draw(background,0,(350*h/1750*4),0,(w/2048),(h/1750),0,0) 
    	love.graphics.draw(background,(1024*w/2048),0,0,(w/2048),(h/1750),0,0)
		love.graphics.draw(background,(1024*w/2048),(350*h/1750*1),0,(w/2048),(h/1750),0,0) 
    	love.graphics.draw(background,(1024*w/2048),(350*h/1750*2),0,(w/2048),(h/1750),0,0) 
    	love.graphics.draw(background,(1024*w/2048),(350*h/1750*3),0,(w/2048),(h/1750),0,0)     
    	love.graphics.draw(background,(1024*w/2048),(350*h/1750*4),0,(w/2048),(h/1750),0,0)
    	if start_cond then
    		love.graphics.draw(start_button,(870*w/2048),0,0,(w/2048),(h/1750),0,0)
    	end
    	love.graphics.draw(car_1.image,car_1.x,car_1.y,0,1,1,0,0)

end

function love.keypressed(key,scancode,isrepeat)
	if key=="escape" then 
		love.event.quit()
	end
end