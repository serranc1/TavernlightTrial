function printSmallGuildNames(memberCount)
--this function is supposed to print names of all guilds that have less than memberCount max members
	local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
	local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
	--"guildName" switched to "guildNames" to make it clear we're printing a list of guild names
	--format is result.getString(queryResult, columnName)
	local guildNames = result.getString(resultId, "name")
	print(guildNames)
end