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

-----------------------------------/ R P COMMANDS \--------------------------------- 
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

--------------------/ R P   N A M E \------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/rpname" then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "/rpname <Name_Surname/Name> <Message>", { 255, 255, 255 })
		else
		rpname = string.gsub(sm[2], "_", " ")
		rpmsg = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^2".. rpname .. "^7: " .. rpmsg, { 255, 255, 255 })
		end
	end
end)
 
-----------------------------------/ I D \---------------------------------
 AddEventHandler('chatMessage', function(source, name, msg)
sm = stringsplit(msg, " ");
if sm[1] == "/id" and then
	CancelEvent()
	if sm[2] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[3] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[4] == nil then 
		fname = sm[2]
		sname = sm[3]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname, {255,255,255})
	else
		fname = sm[2]
		sname = sm[3]
		dob = sm[4]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname .. " ^2DOB:^7 " .. dob, {255,255,255})
	end
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
		if CurrentVersion <= NewestVersion then
                        print('## Community Commands Outdated')
			print('## Check the GitHub releases')
			print('## For the newest Version!')
                        print('## github.com/TheRealToxicDev/FiveM-Community-Commands/releases')
			print('##############')
			print('CHANGES: ' .. Changes)	
                 else
                        print('## Community Commands Up to date!')
			print('##############')	
                 end
		print('\n')
	end)
end)
