local lastZone = nil
CreateThread(function()
	while true do
        Wait(100) -- This doesnt have to be instant
        local player = PlayerId()

        
        if NetworkIsPlayerActive(player) then
            local ped = PlayerPedId()
            -- local coords = GetEntityCoords(ped)
            local x,y,z = table.unpack(GetEntityCoords(ped, true))
            currentZone = GetNameOfZone(x,y,z)
            if currentZone ~= lastZone then
                TriggerServerEvent("tnj-events:onZoneChange", currentZone, lastZone)
                TriggerEvent("tnj-events:onZoneChange", currentZone, lastZone)
                lastZone = currentZone
            end
        end
    end
end)
