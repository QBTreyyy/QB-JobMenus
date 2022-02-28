# QB-JobMenu

CHANGE Trey to whatever you want your menu name to be like BurgerShotMenu or PerezMenu

-- Example

RegisterNetEvent('TreyMenu', function()
exports['qb-menu']:openMenu({

CreateThread(function()
   local coord = vector3(0.0,0.0,0.0)
    local alreadyEnteredZone = false
    local text = ' <b>[E] </b> Open'
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false
        local coords = GetEntityCoords(ped)
        local dist = #(coords-coord)
        if dist <= 1.5 then
            wait = 5
            inZone = true
            if IsControlJustReleased(0, 38) then
                TriggerEvent("OpenMenu")
            end
        else
            wait = 1000
        end

        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            TriggerEvent('cd_drawtextui:HideUI')
        end
        Wait(wait)
    end
 end)
  
  


cd_draw Text Based Menus For Jobs and Much More https://github.com/your-developers

Add this code to any client side script to add a menu to a job location and many other things!

--2022 QBTreyyyy#9999 -- Jay ;)#6969



