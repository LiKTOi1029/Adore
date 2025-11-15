adore = {}
adore.__index = adore
adore.shapes = {}
adore.saves = {}

function AddColorsToTable(InputTable)
	local ResultTable = {}
	for i, v in ipairs(InputTable) do
		if v-0.2 <= 0 then
			ResultTable[i] = v+0.2
		else
			ResultTable[i] = v-0.2
		end
	end
	return ResultTable
end

function adore.save(Object, Name)
	if adore.saves[Name] then
		error("adore.saves["..Name.."] already exists! Exiting application")
	else
		adore.saves[Name] = Object
	end
end

function SaveShapeInformation(Name, ...)
	if Name then
		adore.shapes[Name] = {...}
	else
		adore.shapes[#adore.shapes+1] = {...}
	end
end

function adore.drawBox(RectangleCoordsX, RectangleCoordsY, RectangleSize, RectangleColors, Name)
	love.graphics.push()
	local RectangleCoordsDualsX = (RectangleCoordsX+(RectangleSize*0.05))
	local RectangleCoordsDualsY = (RectangleCoordsY+(RectangleSize*0.05))
	local RectangleSizeDuals = (RectangleSize*0.9)
	local RectangleColorsDuals = AddColorsToTable(RectangleColors)
	love.graphics.setColor(RectangleColors[1],RectangleColors[2],RectangleColors[3],1)
	love.graphics.rectangle("fill",RectangleCoordsX,RectangleCoordsY,RectangleSize,RectangleSize)
	love.graphics.setColor(RectangleColorsDuals[1],RectangleColorsDuals[2],RectangleColorsDuals[3],1)
	love.graphics.rectangle("fill",RectangleCoordsDualsX,RectangleCoordsDualsY,RectangleSizeDuals,RectangleSizeDuals)
	love.graphics.setColor(0,0,0,1)
	SaveShapeInformation(Name, RectangleCoordsDualsX, RectangleCoordsDualsY, RectangleSizeDuals)
	love.graphics.pop()
end

function adore.drawRectangle(RectangleCoordsX, RectangleCoordsY, RectangleSizeX, RectangleSizeY, RectangleColors, Name)
	love.graphics.push()
	local RectangleSizeDualsX, RectangleSizeDualsY
	local RectangleCoordsDualsY, RectangleCoordsDualsX
	if RectangleSizeX < RectangleSizeY then
		RectangleCoordsDualsX = (RectangleCoordsX+(RectangleSizeX*0.05))
		RectangleSizeDualsX = (RectangleSizeX*0.9)
		local Difference = RectangleSizeX-RectangleSizeDualsX
		RectangleSizeDualsY = RectangleSizeY-Difference
		RectangleCoordsDualsY = (RectangleCoordsY+(Difference/2))
	else
		RectangleCoordsDualsY = (RectangleCoordsY+(RectangleSizeY*0.05))
		RectangleSizeDualsY = (RectangleSizeY*0.9)
		local Difference = RectangleSizeY-RectangleSizeDualsY
		RectangleSizeDualsX = RectangleSizeX-Difference
		RectangleCoordsDualsX = (RectangleCoordsX+(Difference/2))
	end
	local RectangleColorsDuals = AddColorsToTable(RectangleColors)
	love.graphics.setColor(RectangleColors[1],RectangleColors[2],RectangleColors[3],1)
	love.graphics.rectangle("fill",RectangleCoordsX,RectangleCoordsY,RectangleSizeX,RectangleSizeY)
	love.graphics.setColor(RectangleColorsDuals[1],RectangleColorsDuals[2],RectangleColorsDuals[3],1)
	love.graphics.rectangle("fill",RectangleCoordsDualsX,RectangleCoordsDualsY,RectangleSizeDualsX,RectangleSizeDualsY)
	love.graphics.setColor(0,0,0,1)
	SaveShapeInformation(Name, RectangleCoordsDualsX, RectangleCoordsDualsY, RectangleSizeDualsX, RectangleSizeDualsY)
	love.graphics.pop()
end

function adore.addObject(Type, Args)
	if Type == "text" then
		for Number, Value in ipairs(Args) do
			
		end
	end
end

return adore