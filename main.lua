recOnePosX = 1
recOneWidth = 400

recTwoPosX = 1
recTwoWidth = 350

recThreePosX = 1
recThreeWidth = 300

recFourPosX = 1
recFourWidth = 250

recFivePosX = 1
recFiveWidth = 200

recSixPosX = 1
recSixWidth = 150

recSevenPosX = 1
recSevenWidth = 100

recEightPosX = 1
recEightWidth = 50

recNinePosX = 1
recNineWidth = 20

function love.load()
velocity = 200
sumeVelocity = 300
screenWidth = 800

recOnePosY = 530
recOneHeight = 40
recOneMove = true
recOneDraw = true

recTwoPosY = 490
recTwoHeight = 40
recTwoMove = false
recTwoDraw = false

recThreePosY = 450
recThreeHeight = 40
recThreeMove = false
recThreeDraw = false

recFourPosY = 410
recFourHeight = 40
recFourMove = false
recFourDraw = false

recFivePosY = 370
recFiveHeight = 40
recFiveMove = false
recFiveDraw = false

recSixPosY = 330
recSixHeight = 40
recSixMove = false
recSixDraw = false

recSevenPosY = 290
recSevenHeight = 40
recSevenMove = false
recSevenDraw = false

recEightPosY = 250
recEightHeight = 40
recEightMove = false
recEightDraw = false

recNinePosY = 210
recNineHeight = 40
recNineMove = false
recNineDraw = false

recCounter = 1
addCounter = false
numberMaxRecsPiled = 9

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

recSevenPosX = 1
recSevenPosY = 290
recSevenWidth = 100
recSevenHeight = 40
recSevenMove = false
recSevenDraw = false

recEightPosX = 1
recEightPosY = 250
recEightWidth = 50
recEightHeight = 40
recEightMove = false
recEightDraw = false

recNinePosX = 1
recNinePosY = 210
recNineWidth = 20
recNineHeight = 40
recNineMove = false
recNineDraw = false

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

function cutRecBordersRecSeven()
	if recSevenPosX + recSevenWidth > recSixPosX + recSixWidth and recSevenPosX < recSixPosX + recSixWidth then
		recSevenWidth = (recSixPosX + recSixWidth) - recSevenPosX
	else
		if recSevenPosX + recSevenWidth > recSixPosX + recSixWidth and recSevenPosX > recSixPosX + recSixWidth then
			playing = false
		end
	end

	if recSevenPosX < recSixPosX and recSevenPosX + recSevenWidth > recSixPosX then
		aux = recSixPosX - recSevenPosX
		recSevenWidth = recSevenWidth - aux
		recSevenPosX = recSixPosX
	else 
		if recSevenPosX < recSixPosX and recSevenPosX + recSevenWidth < recSixPosX then
			playing = false
		end
	end
end

function cutRecBordersRecEight()
	if recEightPosX + recEightWidth > recSevenPosX + recSevenWidth and recEightPosX < recSevenPosX + recSevenWidth then
		recEightWidth = (recSevenPosX + recSevenWidth) - recEightPosX
	else
		if recEightPosX + recEightWidth > recSevenPosX + recSevenWidth and recEightPosX > recSevenPosX + recSevenWidth then
			playing = false
		end
	end

	if recEightPosX < recSevenPosX and recEightPosX + recEightWidth > recSevenPosX then
		aux = recSevenPosX - recEightPosX
		recEightWidth = recEightWidth - aux
		recEightPosX = recSevenPosX
	else 
		if recEightPosX < recSevenPosX and recEightPosX + recEightWidth < recSevenPosX then
			playing = false
		end
	end
end

function cutRecBordersRecNine() 
	if recNinePosX + recNineWidth > recEightPosX + recEightWidth and recNinePosX < recEightPosX + recEightWidth then
		recNineWidth = (recEightPosX + recEightWidth) - recNinePosX
	else
		if recNinePosX + recNineWidth > recEightPosX + recEightWidth and recNinePosX > recEightPosX + recEightWidth then
			playing = false
		end
	end

	if recNinePosX < recEightPosX and recNinePosX + recNineWidth > recEightPosX then
		aux = recEightPosX - recNinePosX
		recNineWidth = recNineWidth - aux
		recNinePosX = recEightPosX
	else 
		if recNinePosX < recEightPosX and recNinePosX + recNineWidth < recEightPosX then
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

			cutRecBordersRecSix()	

			if playing == true then
				recSevenMove = true
				recSevenDraw = true		
			end		

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
				
			addCounter = true
		end	
	end
end

function stopMovePlayerSeven(key)

	function love.keypressed(key)

		if key == "space" then
			recSevenMove = false	

			cutRecBordersRecSeven()		

			if playing == true then
				recEightMove = true
				recEightDraw = true		
			end			

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
				
			addCounter = true
		end	
	end
end

function stopMovePlayerEight(key)

	function love.keypressed(key)

		if key == "space" then
			recEightMove = false	

			cutRecBordersRecEight()		

			if playing == true then
				recNineMove = true
				recNineDraw = true		
			end				

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
				
			addCounter = true
		end	
	end
end

function stopMovePlayerNine(key)

	function love.keypressed(key)

		if key == "space" then
			recNineMove = false	

			cutRecBordersRecNine()					

			if velocity < 0 then
				velocity = velocity * -1			
			end	

			velocity = velocity + sumeVelocity
				
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

function winCondition()

	if recCounter == numberMaxRecsPiled + 1 then
			playing = false
			win = true
	end
end

function love.update(dt)

	if playing == true then

		if recCounter == 1 then
			if recOneMove == true then

				recOnePosX = moveRec(recOnePosX, recOneWidth, dt)				
				stopMovePlayerOne("space")				
			end	
		end
		
		if recCounter == 2 then
			if recTwoMove == true then

				recTwoPosX = moveRec(recTwoPosX, recTwoWidth, dt)
				stopMovePlayerTwo("space")					
			end
		end

	
		if recCounter == 3 then
			if recThreeMove == true then

				recThreePosX = moveRec(recThreePosX, recThreeWidth, dt)
				stopMovePlayerThree("space")					
			end
		end
	
		if recCounter == 4 then
			if recFourMove == true then

				recFourPosX = moveRec(recFourPosX, recFourWidth, dt)
				stopMovePlayerFour("space")					
			end
		end

		if recCounter == 5 then
			if recFiveMove == true then
				
				recFivePosX = moveRec(recFivePosX, recFiveWidth, dt)
				stopMovePlayerFive("space")					
			end
		end		

		if recCounter == 6 then
			if recSixMove == true then

				recSixPosX = moveRec(recSixPosX, recSixWidth, dt)
				stopMovePlayerSix("space")				
			end
		end

		if recCounter == 7 then
			if recSevenMove == true then

				recSevenPosX = moveRec(recSevenPosX, recSevenWidth, dt)
				stopMovePlayerSeven("space")					
			end
		end

		if recCounter == 8 then
			if recEightMove == true then

				recEightPosX = moveRec(recEightPosX, recEightWidth, dt)
				stopMovePlayerEight("space")					
			end
		end

		if recCounter == 9 then
			if recNineMove == true then

				recNinePosX = moveRec(recNinePosX, recNineWidth, dt)
				stopMovePlayerNine("space")					
			end
		end

		nextRec()

		winCondition()

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
	love.graphics.print(recCounter, 20, 50)

	if velocity < 0 then

		velocity = velocity * -1		
	end	

	love.graphics.print(velocity, 90, 20)
	
	--Draw Instructions

	love.graphics.print("PRESS SPACE TO STOP RECTANGLE", 550, 20)	

	if playing == false then

		if win then
			love.graphics.print("YOU WIN", 350, 20)
		else
			love.graphics.print("YOU LOST", 350, 20)
		end	

		love.graphics.print("PRESS SPCAE TO PLAY AGAIN", 250, 50)
	end
end

function love.draw()
	
	drawRec(recOneDraw, recOnePosX, recOnePosY, recOneWidth, recOneHeight)
	
	drawRec(recTwoDraw, recTwoPosX, recTwoPosY, recTwoWidth, recTwoHeight)

	drawRec(recThreeDraw, recThreePosX, recThreePosY, recThreeWidth, recThreeHeight)

	drawRec(recFourDraw, recFourPosX, recFourPosY, recFourWidth, recFourHeight)

	drawRec(recFiveDraw, recFivePosX, recFivePosY, recFiveWidth, recFiveHeight)

	drawRec(recSixDraw, recSixPosX, recSixPosY, recSixWidth, recSixHeight)

	drawRec(recSevenDraw, recSevenPosX, recSevenPosY, recSevenWidth, recSevenHeight)

	drawRec(recEightDraw, recEightPosX, recEightPosY, recEightWidth, recEightHeight)

	drawRec(recNineDraw, recNinePosX, recNinePosY, recNineWidth, recNineHeight)

	drawUI(velocity)
end