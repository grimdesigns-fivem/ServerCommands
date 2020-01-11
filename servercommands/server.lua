-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
 
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ooc" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^6OOC | ^7" .. name, { 128, 128, 128 }, string.sub(msg,5))
                --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, tru
	end

	if sm[1] == "/me" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3Me | ^7" .. name, { 128, 128, 128 }, string.sub(msg,5))
                --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, true) ]]	
        end

	if sm[1] == "/do" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2Do | ^7" .. name, { 128, 128, 128 }, string.sub(msg,5))
	        --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, true) ]]	
        end

	if sm[1] == "/911" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^8(911) | ^7" .. name, { 255, 255, 255 }, string.sub(msg,5))
                --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, true) ]]	
	end

	if sm[1] == "/news" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^3News", {255, 255, 255}, string.sub(msg,6))
        --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, true) ]]	
    end

    if sm[1] == "/ad" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^2AD | " .. name, {255, 255, 255}, string.sub(msg,5))
        --[[ TriggerEvent('DiscordBot:ToDiscord', 'chat', GetPlayerName(id) .. ' [ID: ' .. GetPlayerServerId(id) .. ']', data.message, 'steam', GetPlayerServerId(id), false, true) ]]	
    end
end)    
enable_roleplay_commands

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

-- Version Checking down here, better don't touch this
-- Will throw an error if your version is outdated
local CurrentVersion = '1.0.0'
local GithubResourceName = 'Community Commands'

PerformHttpRequest('https://raw.githubusercontent.com/toxic-developer/CommunityCommands/master/' .. GithubResourceName .. '/VERSION', function(Error, NewestVersion, Header)
	PerformHttpRequest('https://raw.githubusercontent.com/toxic-developer/CommunityCommands/master/' .. GithubResourceName .. '/CHANGES', function(Error, Changes, Header)
		print('\n')
		print('##############')
		print('## ' .. GetCurrentResourceName())
		print('##')
		print('## Current Version: ' .. CurrentVersion)
		print('## Newest Version: ' .. NewestVersion)
		print('##')
		if CurrentVersion = NewestVersion then
			print('## Community Commands Up to date!')
			print('##############')	
                 else
                        print('## Community Commands Outdated')
			print('## Check the GitHub releases')
			print('## For the newest Version!')
                        print('## github.com/TheRealToxicDev/FiveM-Community-Commands/releases')
			print('##############')
			print('CHANGES: ' .. Changes)
                 end
		print('\n')
	end)
end)
