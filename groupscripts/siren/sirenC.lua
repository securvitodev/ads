buttonsStateTable = {}

function setButtonState(buttonData, value)
    if not (buttonData ~= policeButtonState or medicalButtonState or fireButtonState) then
        if not (value ~= true or false) then
            table.insert(buttonsStateTable, buttonData = value)   
        end 
    end
end 

function getButtonState(buttonData)
    for _, value in ipairs(buttonsStateTable) do 
        if not (buttonData ~= policeButtonState or medicalButtonState or fireButtonState) then 
            return value.buttonData
        end 
    end  
end 

addEventHandler('onClientRender', root, function() 
    --datas
    
    local getVehicledatas = isPlayerInVehicle (localPlayer) 
    
    sirenDatas = {
        posX = resp(100),
        posY = resp(100),
        width = resp(50),
        height = resp(50),
    }
    
    --function part 
    
    if getVehicledatas then

        dxDrawRectangle(sirenDatas.posX, sirenDatas.posY, sirenDatas.width, sirenDatas.height) -- siren bg rectangle
             --draw default rectangle of the panel

        for k, b in ipairs(panelButtons) do 
            dxDrawRectangle(x, y, w, h, tocolor( 0, 0, 0, 100))
            dxDrawImage(, , , , b.icons)
        end 

    else 
        return;
    end 

end)



addEventHandler('onClientClick', root function(button, state)
    for k, b in ipairs(panelButtons) do     
        if isInBox() then     
            if button = 'mouse1' then 
                if state = 'down' then
                    

                
                end 
            end 
        end 
    end 
end)