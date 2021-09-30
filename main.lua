function love.load()
velocity = 200
sumeVelocity = 300
screenWidth = 800

recOnePosX = 1
recOnePosY = 530
recOneWidth = 400
recOneHeight = 40
recOneMove = true
recOneDraw = true

recTwoPosX = 1
recTwoPosY = 490
recTwoWidth = 350
recTwoHeight = 40
recTwoMove = false
recTwoDraw = false

recThreePosX = 1
recThreePosY = 450
recThreeWidth = 300
recThreeHeight = 40
recThreeMove = false
recThreeDraw = false

recFourPosX = 1
recFourPosY = 410
recFourWidth = 250
recFourHeight = 40
recFourMove = false
recFourDraw = false

recFivePosX = 1
recFivePosY = 370
recFiveWidth = 200
recFiveHeight = 40
recFiveMove = false
recFiveDraw = false

recSixPosX = 1
recSixPosY = 330
recSixWidth = 150
recSixHeight = 40
recSixMove = false
recSixDraw = false

recCounter = 1
addCounter = false

playing = true
win = false

end

function resetValues()
velocity = 200 

recOnePosX = 1
recOnePosY = 530
recOneWidth = 300
recOneHeight = 40
recOneMove = true
recOneDraw = true

recTwoPosX = 1
recTwoPosY = 490
recTwoWidth = 250
recTwoHeight = 40
recTwoMove = false
recTwoDraw = false

recThreePosX = 1
recThreePosY = 450
recThreeWidth = 200
recThreeHeight = 40
recThreeMove = false
recThreeDraw = false

recFourPosX = 1
recFourPosY = 410
recFourWidth = 150
recFourHeight = 40
recFourMove = false
recFourDraw = false

recFivePosX = 1
recFivePosY = 370
recFiveWidth = 100
recFiveHeight = 40
recFiveMove = false
recFiveDraw = false

recSixPosX = 1
recSixPosY = 330
recSixWidth = 50
recSixHeight = 40
recSixMove = false
recSixDraw = false

recCounter = 1
addCounter = false

playing = true
win = false
end

-- Cute Recs borders when stoped 

function cutRecBordersRecTwo()
	if recTwoPosX + recTwoWidth > recOnePosX + recOneWidth and recTwoPosX < recOnePosX + recOneWidth then
		recTwoWidth = (recOnePosX + recOneWidth) - recTwoPosX
	else 
		if recTwoPosX + recTwoWidth > recOnePosX + recOneWidth and recTwoPosX > recOnePosX + recOneWidth then
			playing = false
		end
	end

	if recTwoPosX < recOnePosX and recTwoPosX + recTwoWidth > recOnePosX then
		aux = recOnePosX - recTwoPosX
		recTwoWidth = recTwoWidth - aux
		recTwoPosX = recOnePosX
	else
		if recTwoPosX < recOnePosX and recTwoPosX + recTwoWidth < recOnePosX then
			playing = false
		end
	end	
end

function cutRecBordersRecThree()
	if recThreePosX + recThreeWidth > recTwoPosX + recTwoWidth and recThreePosX < recTwoPosX + recTwoWidth then
		recThreeWidth = (recTwoPosX + recTwoWidth) - recThreePosX
	else
		if recThreePosX + recThreeWidth > recTwoPosX + recTwoWidth and recThreePosX > recTwoPosX + recTwoWidth then
			playing = false
		end
	end

	if recThreePosX < recTwoPosX and recThreePosX + recThreeWidth > recTwoPosX then
		aux = recTwoPosX - recThreePosX
		recThreeWidth = recThreeWidth - aux
		recThreePosX = recTwoPosX
	else
		if recThreePosX < recTwoPosX and recThreePosX + recThreeWidth < recTwoPosX then
			playing = false
		end
	end
end

function cutRecBordersRecFour()
	if recFourPosX + recFourWidth > recThreePosX + recThreeWidth and recFourPosX < recThreePosX + recThreeWidth then
		recFourWidth = (recThreePosX + recThreeWidth) - recFourPosX
	else 
		if  recFourPosX + recFourWidth > recThreePosX + recThreeWidth and recFourPosX > recThreePosX + recThreeWidth then
			playing = false
		end
	end

	if recFourPosX < recThreePosX and recFourPosX + recFourWidth > recThreePosX then
		aux = recThreePosX - recFourPosX
		recFourWidth = recFourWidth - aux
		recFourPosX = recThreePosX
	else 
		if recFourPosX < recThreePosX and recFourPosX + recFourWidth < recThreePosX then 
			playing = false
		end
	end
end

function cutRecBordersRecFive()
	if recFivePosX + recFiveWidth > recFourPosX + recFourWidth and recFivePosX < recFourPosX + recFourWidth then
		recFiveWidth = (recFourPosX + recFourWidth) - recFivePosX
	else
		if recFivePosX + recFiveWidth > recFourPosX + recFourWidth and recFivePosX > recFourPosX + recFourWidth then
			playing = false	
		end
	end

	if recFivePosX < recFourPosX and recFivePosX + recFiveWidth > recFourPosX then
		aux = recFourPosX - recFivePosX
		recFiveWidth = recFiveWidth - aux
		recFivePosX = recFourPosX
	else
		if recFivePosX < recFourPosX and recFivePosX + recFiveWidth < recFourPosX then
			playing = false
		end
	end
end

function cutRecBordersRecSix()
	if recSixPosX + recSixWidth > recFivePosX + recFiveWidth and recSixPosX < recFivePosX + recFiveWidth then
		recSixWidth = (recFivePosX + recFiveWidth) - recSixPosX
	else
		if recSixPosX + recSixWidth > recFivePosX + recFiveWidth and recSixPosX > recFivePosX + recFiveWidth then
			playing = false
		end
	end

	if recSixPosX < recFivePosX and recSixPosX + recSixWidth > recFivePosX then
		aux = recFivePosX - recSixPosX
		recSixWidth = recSixWidth - aux
		recSixPosX = recFivePosX
	else 
		if recSixPosX < recFivePosX and recSixPosX + recSixWidth < recFivePosX then
			playing = false
		end
	end
end

-- Move Players Fuctions

function moveRec(recPosX, recWidth, dt)

	if recPosX + recWidth > screenWidth or recPosX < 1 then
		velocity = velocity * -1
	end	

	recPosX = recPosX + velocity * dt

	return recPosX
end 

function moveRecOne(dt)
	if recOnePosX + recOneWidth > screenWidth or recOnePosX < 1 then
		velocity = velocity * -1
	end	

	recOnePosX = recOnePosX + velocity * dt
end

function moveRecTwo(dt)
	if recTwoPosX + recTwoWidth > screenWidth or recTwoPosX < 1 then
		velocity = velocity * -1
	end	

	recTwoPosX = recTwoPosX + velocity * dt
end

function moveRecThree(dt)
	if recThreePosX + recThreeWidth > screenWidth or recThreePosX < 1 then
		velocity = velocity * -1
	end	

	recThreePosX = recThreePosX + velocity * dt
end

function moveRecFour(dt)
	if recFourPosX + recFourWidth > screenWidth or recFourPosX < 1 then
		velocity = velocity * -1
	end	

	recFourPosX = recFourPosX + velocity * dt
end

function moveRecFive(dt)
	if recFivePosX + recFiveWidth > screenWidth or recFivePosX < 1 then
		velocity = velocity * -1
	end	

	recFivePosX = recFivePosX + velocity * dt
end

function moveRecSix(dt)

	if recSixPosX + recSixWidth > screenWidth or recSixPosX < 1 then
		velocity = velocity * -1
	end	

	recSixPosX = recSixPosX + velocity * dt
end

-- Stop Players Movement When Key Pressed

function stopMovePlayerOne(key)

	function love.keypressed(key)

		if key == "space" then
			recOneMove = false	
			recTwoMove = true
			recTwoDraw = true		

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
			
			addCounter = true
		end
	end		
end

function stopMovePlayerTwo(key)

	function love.keypressed(key)

		if key == "space" then
			recTwoMove = false	

			cutRecBordersRecTwo()

			if playing == true then
				recThreeMove = true
				recThreeDraw = true	
			end

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
			
			addCounter = true
		end
	end		
end

function stopMovePlayerThree(key)

	function love.keypressed(key)

		if key == "space" then
			recThreeMove = false	
			
			cutRecBordersRecThree()

			if playing == true then
				recFourMove = true
				recFourDraw = true		
			end

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
			
			addCounter = true
		end	
	end
end

function stopMovePlayerFour(key)

	function love.keypressed(key)

		if key == "space" then
			recFourMove = false	

			cutRecBordersRecFour()	

			if playing == true then
				recFiveMove = true
				recFiveDraw = true		
			end

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
			
			addCounter = true
		end	
	end
end

function stopMovePlayerFive(key)

	function love.keypressed(key)

		if key == "space" then
			recFiveMove = false	

			cutRecBordersRecFive()	

			if playing == true then
				recSixMove = true
				recSixDraw = true		
			end

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
			
			addCounter = true
		end	
	end
end

function stopMovePlayerSix(key)

	function love.keypressed(key)

		if key == "space" then
			recSixMove = false						

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity

			cutRecBordersRecSix()	
			addCounter = true
		end	
	end
end

function nextRec()

	if addCounter == true and playing == true then

		recCounter = recCounter + 1
		addCounter = false
	end
end

function resetGame(key)
	function love.keypressed(key)

		if key == "space" then

			resetValues()
		end
	end
end

function love.update(dt)

	if playing == true then
		if recCounter == 1 then
			if recOneMove == true then

				stopMovePlayerOne("space")
				moveRecOne(dt)
			end	
		end
		
		if recCounter == 2 then
			if recTwoMove == true then

				stopMovePlayerTwo("space")
				moveRecTwo(dt)	
			end
		end

	
		if recCounter == 3 then
			if recThreeMove == true then

				stopMovePlayerThree("space")
				moveRecThree(dt)	
			end
		end
	
		if recCounter == 4 then
			if recFourMove == true then

				stopMovePlayerFour("space")
				moveRecFour(dt)	
			end
		end

		if recCounter == 5 then
			if recFiveMove == true then

				stopMovePlayerFive("space")
				moveRecFive(dt)	
			end
		end		

		if recCounter == 6 then
			if recSixMove == true then

				stopMovePlayerSix("space")
				moveRecSix(dt)	
			end
		end

		nextRec()

		if recCounter == 7 then
			playing = false
			win = true
		end

	else	
		resetGame("space")
	end

end

function drawRec(recDraw, recPosX, recPosY, recWidth, recHeight)
	
	if recDraw then
		love.graphics.rectangle("fill", recPosX, recPosY, recWidth, recHeight)
	end
end

function drawUI(velocity)

	--Draw Velocity

	love.graphics.print("VELOCITY", 20, 20)

	if velocity < 0 then

		velocity = velocity * -1		
	end	

	love.graphics.print(velocity, 90, 20)
	
	--Draw Instructions

	love.graphics.print("PRESS SPACE TO STOP RECTANGLE", 550, 20)	

	if playing == false then

		if win then
			love.graphics.print("GANASTE", 350, 20)
		else
			love.graphics.print("PERDISTE", 350, 20)
		end	

		love.graphics.print("OPRIME ESPACIO PARA VOLVER A JUGAR", 250, 50)
	end
end

function love.draw()
	
	drawRec(recOneDraw, recOnePosX, recOnePosY, recOneWidth, recOneHeight)
	
	drawRec(recTwoDraw, recTwoPosX, recTwoPosY, recTwoWidth, recTwoHeight)

	drawRec(recThreeDraw, recThreePosX, recThreePosY, recThreeWidth, recThreeHeight)

	drawRec(recFourDraw, recFourPosX, recFourPosY, recFourWidth, recFourHeight)

	drawRec(recFiveDraw, recFivePosX, recFivePosY, recFiveWidth, recFiveHeight)

	drawRec(recSixDraw, recSixPosX, recSixPosY, recSixWidth, recSixHeight)

	drawUI(velocity)
end