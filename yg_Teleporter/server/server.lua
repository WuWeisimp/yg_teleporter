RegisterNetEvent('yg_Teleporter:goto',function(targetId)
    local playerId =source
  --get entity handle of the target
  local targetPed = GetPlayerPed(targetId)

  if targetPed <= 0 then
    TriggerClientEvent('chat:addMessage', playerId, { 
        args = { 'Sorry' .. targetId ..'doesn\'t seem to exist.', },
})
    return
  end
  --getthe coords of the target
  local targetPos = GetEntityCoords(targetPed)

  --send the coords to the client to go to target
  TriggerClientEvent('yg_Teleporter:teleport', playerId, targetPos)
end)

RegisterNetEvent('yg_teleporter:summon', function (targetId)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    local playerPos = GetEntityCoords(playerPed)

    TriggerClientEvent('yg_Teleporter:teleport', targetId, playerPos)
end)