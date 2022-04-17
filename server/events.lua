--[[ 
	tnj-events
 _________  ________           ___
|\___   ___\\   __  \         |\  \
\|___ \  \_\ \  \|\  \  /\    \ \  \
     \ \  \ \ \__     \/  \ __ \ \  \
      \ \  \ \|_/  __     /|\  \\_\  \
       \ \__\  /  /_|\   / | \________\
        \|__| /_______   \/ \|________|
              |_______|\__\
                      \|__|


    Credits:
    - CFX Network for the "baseevents" resource


]] -- Do not edit this file unless you know what you are doing

-- Player
RegisterServerEvent('tnj-events:onPlayerDied')
RegisterServerEvent('tnj-events:onPlayerKilled')
RegisterServerEvent('tnj-events:onPlayerWasted')
RegisterServerEvent('tnj-events:onPlayerShoot')

-- Vehicles
RegisterServerEvent('tnj-events:enteringVehicle')
RegisterServerEvent('tnj-events:enteringAborted')
RegisterServerEvent('tnj-events:enteredVehicle')
RegisterServerEvent('tnj-events:leftVehicle')
