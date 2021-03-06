local talk = TalkAction("/clean")

function talk.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	local itemCount = cleanMap()
	if itemCount ~= 0 then
		player:sendCancelMessage("Cleaned " .. itemCount .. " item" .. (itemCount > 1 and "s" or "") .. " from the map.")
	end
	return false
end

talk:separator(" ")
talk:register()
