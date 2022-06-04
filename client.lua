RegisterCommand('pie', function()
    local dictName = 'export@head_000_r'
    local animName = 'head_000_r'
  
    -- Request animation dictionary.
    RequestAnimDict(dictName)
    while not HasAnimDictLoaded(dictName) do
      Wait(1)
    end
  
    -- Play animation on player ped.
    local playerPed = PlayerPedId()
    TaskPlayAnim(playerPed, dictName, animName, 4.0, 4.0, -1, 1, 0.0)
  
    -- Unload animation dictionary.
    RemoveAnimDict(dictName)
  end, false)