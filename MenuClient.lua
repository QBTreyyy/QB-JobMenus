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
    while true do
      local sleep = 2000
      local PlayerPed = PlayerPedId()
      local PlayerPos = GetEntityCoords(PlayerPed)
      local Player = QBCore.Functions.GetPlayerData()

      local TreyMenu = #(PlayerPos - vector3(-583.76, -881.73, 25.95))     --Where you want the menu to be

      InRange = false
      if TreyMenu < 10 then sleep = 2 end
      if TreyMenu < 1.0 then
          InRange = true
            QBCore.Functions.DrawText3D(-583.67, -882.14,25.95 ,'~g~E~w~ - Open Trey Menu')
              if IsControlJustPressed(0, 38) then
                  TriggerEvent("TreyMenu")
              end
            end
      Wait(sleep)
    end
end)
