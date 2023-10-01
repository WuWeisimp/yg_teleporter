--command to go to anpther player
RegisterCommand('goto', function(_, args)
    local targetId = args [1]

    if not targetId then
        triggerEvent ('chat:addMessage', {args = {'Please Provide target ID', },
    })
        return
    end
    TriggerServerEvent('yg_Teleporter:goto', targetId)

end)
--command to brung another player to us
RegisterCommand('summon', function(_,args)
    local targetId = args[1]

if not targetId then
    TriggerEvent('chat:addMessage', {
        args = {'Please Provide target ID', },
  })
  
        return
end
 TriggerServerEvent('yg_Teleporter:summon', targetId)
end)

--an event to teleport us to a specific location

RegisterNetEvent('yg_Teleporter:teleport', function (targetCoordinates)
    local playerPed = PlayerPedId()

    SetEntityCoords(playerPed, targetCoordinates)
    
end)