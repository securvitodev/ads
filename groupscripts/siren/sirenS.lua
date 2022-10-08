
function playSirenSound(vehicles, sirenFile, distance)
    
    datas = {
        vehicles = getElementsByType('vehicle')
        vehiclePositions = getElementPosition(vehicles)
    }

    local sirenSound = playSound3D(sirenFile, datas.vehiclePositions, true)
    setSoundMaxDistance(uSound, distance)

end 