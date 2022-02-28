RegisterNetEvent('TreyMenu', function()
exports['qb-menu']:openMenu({
    {
        header = "Treys Items",
        isMenuHeader = true, -- Set to true to make a nonclickable title
    },
    {
        header = "| itemname |",
        txt = "",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
        },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
            }
        },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
        {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
        {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    },
    {
        header = "| itemname |",
        txt = "$100",
        params = {
            event = ""
        }
    }
})
end)


CreateThread(function()
    local coord = vector3(0.0,0.0,0.0)
    local alreadyEnteredZone = false
    local text = ' <b>[E] </b> Open Menu'
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
                TriggerEvent("TreyMenu")
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
