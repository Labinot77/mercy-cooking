CallbackModule, PlayerModule, FunctionsModule, DatabaseModule, CommandsModule, EventsModule = nil, nil, nil, nil, nil, nil
local MachineTable = {}

_Ready = false
AddEventHandler('Modules/server/ready', function()
    TriggerEvent('Modules/server/request-dependencies', {
        'Callback',
        'Player',
        'Functions',
        'Database',
        'Commands',
        'Events',
    }, function(Succeeded)
        if not Succeeded then return end
        CallbackModule = exports['mercy-base']:FetchModule('Callback')
        PlayerModule = exports['mercy-base']:FetchModule('Player')
        FunctionsModule = exports['mercy-base']:FetchModule('Functions')
        DatabaseModule = exports['mercy-base']:FetchModule('Database')
        CommandsModule = exports['mercy-base']:FetchModule('Commands')
        EventsModule = exports['mercy-base']:FetchModule('Events')
        _Ready = true
    end)
end)

-- [ Code ] --

Citizen.CreateThread(function()
    while not _Ready do
        Citizen.Wait(4)
    end

EventsModule.RegisterServer('mercy-illegal/server/methLabs/update-lab-active-state', function(Source, labId, Type, bool)
    ServerConfig.LabValues[labId][Type] = bool
end)

CallbackModule.CreateCallback('mercy-illegal/server/methLabs/lab-current-state', function(Source, Cb, labId, Current)
    Cb(ServerConfig.LabValues[labId][Current])
    -- ACTIVE, CLEANING??
end)

RegisterNetEvent('mercy-illegal/server/methLabs/add-lab-values', function(labId, key, value)
    if ServerConfig.LabValues[labId]['Values'] then
        local labValues = ServerConfig.LabValues[labId]['Values']
            labValues[key] = value
    else
        print('Lab with ID ' .. labId .. ' does not exist or does not have values in ServerConfig.LabValues')
    end
end)

EventsModule.RegisterServer('mercy-illegal/server/methLabs/start-dec-values', function(Source, labId)
    Citizen.CreateThread(function()
        while true do
            Wait(750)
            if ServerConfig.LabValues[labId]['Active'] then
                DecreaseLabValues(Source, labId)
            else
                for key, _ in pairs(ServerConfig.LabValues[labId]['Values']) do
                    ResetLabValues(Source, labId)
                end
                break -- Exit the loop if the lab is not active
            end
        end
    end)
end)


CallbackModule.CreateCallback("mercy-illegal/server/methLabs/can-adjust-machine", function(Source, Cb, Data, PlayerId)
    local LabId = Data.labId
    local MachineId = Data.MachineId
    
    if MachineTable[LabId] == nil then 
        MachineTable[LabId] = {}
    end

    if MachineTable[LabId][PlayerId] == nil then 
        MachineTable[LabId][PlayerId] = ""
    end

    local lastNumber = tonumber(string.sub(MachineTable[LabId][PlayerId], -1)) or -1
    local secondToLast = tonumber(string.sub(MachineTable[LabId][PlayerId], -2, -2)) or -1
    
    if lastNumber ~= MachineId and secondToLast ~= MachineId then 
        Cb(true)
        -- print(Cb)
    else 
        Cb(false)
        -- print(Cb)
    end
end)

EventsModule.RegisterServer("mercy-illegal/server/methLabs/add-used-machine", function(Source, Data, PlayerId)
    local MachineId = Data.MachineId
    local LabId = Data.labId

    MachineTable[LabId][PlayerId] = MachineTable[LabId][PlayerId] .. tostring(MachineId)
end)

EventsModule.RegisterServer("mercy-illegal/server/methLabs/give-reward", function(Source, labId)
        if ServerConfig.LabValues[labId]["Active"] and not ServerConfig.LabValues[labId]["Cleaning"] then
            local Player = PlayerModule.GetPlayerBySource(Source)
            Player.Functions.AddItem("meth-bag", math.random(30,34), false, false, true)
            Player.Functions.Notify('success-cook', "Finished Cook", 5500)
            ResetLabValues(Source, labId)
        end
end)
    

    -- For now its triggerd from client side, make it from serve side
RegisterNetEvent("mercy-illegal/server/methLabs/reset-state", function(labId, type, bool)
            ServerConfig.LabValues[labId][type] = bool
    
            if type == 'Cleaning' then
                SetTimeout((1000 * 60) * ServerConfig.ResetTimes['Labs'], function()
                    ServerConfig.LabValues[labId]['Cleaning'] = false
                end)
            end
end)

        -- Functions

        function DecreaseLabValues(Source, labId)
            local labValues = ServerConfig.LabValues[labId]['Values']
            local state = ServerConfig.LabValues[labId]['Active']
        
                if state then 
                for key, value in pairs(labValues) do

                -- print("Key:", key, "Value:", value)
                 labValues[key] = math.max(0, value - 1)
                 TriggerClientEvent('mercy-illegal/client/methLabs/sync-lab-value', Source, key, labValues[key])
                        if labValues[key] == 0 then 
                            ServerConfig.LabValues[labId]['Active'] = false
                            ServerConfig.LabValues[labId]['Cleaning'] = true
                        end
                    end
                end
            end

    function ResetLabValues(Source, labId)
        ServerConfig.LabValues[labId]['Active'] = false
        ServerConfig.LabValues[labId]['Cleaning'] = true

        local labValues = ServerConfig.LabValues[labId]['Values']
        for key, _ in pairs(labValues) do
            labValues[key] = 100  
            TriggerClientEvent('mercy-illegal/client/methLabs/hide-icons', Source, key)
        end

        MachineTable[LabId] = nil
    end

end)