--[[ function appears to remove a member from a player's party aka kicking from party --]]
function kickFromPlayerParty(playerId, membername)
	player = Player(playerId)
	local party = player:getParty()
	
	for k,v in pairs(party:getMembers()) do
		if v == Player(membername) then
			party:removeMember(Player(membername))
			--[[if member is found, no need to iterate through the rest of the party--]]
			break
		end
	end
end