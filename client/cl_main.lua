FunctionsModule, CallbackModule, EventsModule, PlayerModule, VehicleModule = nil

AddEventHandler('Modules/client/ready', function()
    TriggerEvent('Modules/client/request-dependencies', {
        'Callback',
        'Functions',
        'Events',
        'Player',
        'Vehicle',
    }, function(Succeeded)
        if not Succeeded then return end
        CallbackModule = exports['mercy-base']:FetchModule('Callback')
        FunctionsModule = exports['mercy-base']:FetchModule('Functions')
        EventsModule = exports['mercy-base']:FetchModule('Events')
        PlayerModule = exports['mercy-base']:FetchModule('Player')
        VehicleModule = exports['mercy-base']:FetchModule('Vehicle')
    end)
end)


RegisterNetEvent('mercy-illegal/client/methLabs/hide-all', function(Data)
  local labValues = ServerConfig.LabValues[Data.Id]['Values']
  for key, value in pairs(labValues) do
      TriggerEvent('mercy-ui/client/set-hud-values', key, 'Show', false)
      end
  end)


  RegisterNetEvent('mercy-illegal/client/methLabs/check-lab-values', function(Data)
      local labId = Data.Id
      local isActive = CallbackModule.SendCallback("mercy-illegal/server/methLabs/is-lab-active", labId)
      local isCleaning = CallbackModule.SendCallback("mercy-illegal/server/methLabs/is-lab-cleaning", labId)


    --   local Input = exports['mercy-ui']:BuildSliders()

      if not isActive and not isCleaning then
          exports['mercy-inventory']:SetBusyState(true)
          exports['mercy-ui']:ProgressBar(Data.ProgressText, 13000, {['AnimName'] = Data.Animation, ['AnimDict'] = Data.AnimDict}, false, true, true, function(DidComplete)
          if DidComplete then
          exports['mercy-inventory']:SetBusyState(false)
          EventsModule.TriggerServer("mercy-illegal/server/methLabs/update-lab-active-state", labId, "Active" ,true)
          EventsModule.TriggerServer("mercy-illegal/server/methLabs/start-dec-values", labId) -- Trigger that start the lab

          Citizen.SetTimeout(((1000 * 60) * math.random(5,7)), function()
              EventsModule.TriggerServer("mercy-illegal/server/methLabs/give-reward", labId)
              
              Wait(1000)

              TriggerServerEvent('mercy-illegal/server/methLabs/reset-state', labId, 'Cleaning', true)

          end)
      end
  end)
      else
          TriggerEvent('mercy-ui/client/notify', "error", "Лабораторията не работи, опитай по-късно!", 'error')
      end
  end)


RegisterNetEvent('mercy-illegal/client/methLabs/sync-lab-value', function(key, value)
  TriggerEvent('mercy-ui/client/set-hud-values', key, 'Value', value)
end)


RegisterNetEvent('mercy-illegal/client/methLabs/adjust-machine', function(Data)
    local PlayerId = GetPlayerPed(PlayerId())
    local result = CallbackModule.SendCallback("mercy-illegal/server/methLabs/can-adjust-machine", Data, PlayerId)
    

    
    if result then 
    exports['mercy-inventory']:SetBusyState(true)
    TriggerEvent('mercy-ui/client/play-sound', 'buton_press', 0.02)
    exports['mercy-ui']:ProgressBar(Data.ProgressText, 10000, {['AnimName'] = Data.Animation, ['AnimDict'] = Data.AnimDict}, false, true, true, function(DidComplete)
        if DidComplete then
            EventsModule.TriggerServer("mercy-illegal/server/methLabs/add-used-machine", Data, PlayerId)
            exports['mercy-inventory']:SetBusyState(false)
            TriggerServerEvent('mercy-illegal/server/methLabs/add-lab-values', Data.labId, Data.key, Data.value)
              end
        end)
    else
        TriggerEvent('mercy-ui/client/notify', "detcord-error", "You can't use this", 'error')

    end
end)