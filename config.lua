Config = Config or {}
Config.Debug = true

-- Server and Client Debug Code :)
if Config.Debug then
    RegisterNetEvent('tnj-events:onPlayerShoot', function(isShooting, isShootingEntity, entityShot, entityType, shotFromVehicle)
        --[[
            entityType:
            0 = no entity
            1 = ped
            2 = vehicle
            3 = object
        ]]
        print(isShooting, isShootingEntity, entityShot, entityType, shotFromVehicle)
    end)

    RegisterNetEvent('tnj-events:onZoneChange', function(currentZone, lastZone)
        print(currentZone, lastZone)
        local ped=PlayerPedId()
        if currentZone == "DAVIS" then
            SetRelationshipBetweenGroups(5, GetHashKey('AMBIENT_GANG_BALLAS'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(5, GetHashKey('SPECIAL'), GetHashKey('PLAYER'))	
            SetRelationshipBetweenGroups(5, GetHashKey('NO_RELATIONSHIP'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(5, GetHashKey('CIVMALE'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(5, GetHashKey('CIVFEMALE'), GetHashKey('PLAYER'))

            TaskCombatPed(GetHashKey('AMBIENT_GANG_BALLAS'), ped)
            TaskCombatPed(GetHashKey('SPECIAL'), ped)
            TaskCombatPed(GetHashKey('NO_RELATIONSHIP'), ped)
            TaskCombatPed(GetHashKey('CIVMALE'), ped)
            TaskCombatPed(GetHashKey('CIVFEMALE'), ped)
        elseif lastZone == "DAVIS" then
            SetRelationshipBetweenGroups(3, GetHashKey('AMBIENT_GANG_BALLAS'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(3, GetHashKey('SPECIAL'), GetHashKey('PLAYER'))	
            SetRelationshipBetweenGroups(3, GetHashKey('NO_RELATIONSHIP'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(3, GetHashKey('CIVMALE'), GetHashKey('PLAYER'))
            SetRelationshipBetweenGroups(3, GetHashKey('CIVFEMALE'), GetHashKey('PLAYER'))
        end
    end)

    RegisterNetEvent("tnj-events:engineChange", function(engineState, currentVehicle, name, netId)
        print(engineState, currentVehicle, name, netId)
    end)

end
