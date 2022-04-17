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
end
