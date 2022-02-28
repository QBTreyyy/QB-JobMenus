# QB-JobMenu

CHANGE Trey to whatever you want your menu name to be like BurgerShotMenu or PerezMenu

-- Example

RegisterNetEvent('TreyMenu', function()
exports['qb-menu']:openMenu({

Citizen.CreateThread(function()
    while true do
      local sleep = 2000
      local PlayerPed = PlayerPedId()
      local PlayerPos = GetEntityCoords(PlayerPed)
      local Player = QBCore.Functions.GetPlayerData()

      local TreyMenu = #(PlayerPos - vector3(-583.76, -881.73, 25.95))

      InRange = false
      if TreyMenu < 10 then sleep = 2 end
      if TreyMenu < 1.0 then
          InRange = true
            QBCore.Functions.DrawText3D(-583.67, -882.14,25.95 ,'~g~E~w~ - Open Trey Menu')    
              if IsControlJustPressed(0, 38) then
                  TriggerEvent("TreyMenu")
              end
            end
      Citizen.Wait(sleep)
    end
  end)
  
  


Draw Text Based Menus For Jobs and Much More https://github.com/your-developers

Add this code to any client side script to add a menu to a job location and many other things!

--2022 QBTreyyyy#9999 -- Jay ;)#6969



