--unsure why the spell effects only activate on the position of the player
local combat = {}
for i = 1, 4, 1 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
end

AREA_BIGWIND1 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{1, 0, 0, 3, 0, 0, 1},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_BIGWIND2 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 3, 1, 0, 1},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_BIGWIND3 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{1, 0, 1, 3, 1, 0, 1},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_BIGWIND4 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{1, 0, 1, 3, 1, 0, 1},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_BIGWIND5 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 3, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_BIGWIND6 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 3, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_SMALLWIND1 = {
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0},
	{0, 0, 0, 3, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_SMALLWIND2 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 1, 0, 1, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0},
	{0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
AREA_SMALLWIND3 = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0}
}
AREA_EMPTY = {
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}
--pattern of big tornadoes appearing
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND1)) end, 0)
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND2)) end, 300)
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND3)) end, 600)

--pattern of smaller tornadoes appearing and disappearing 3 times
for i = 1, 3, 1 do
	for j = 2, 4, 1 do
		if (j == 2) then
			area = AREA_SMALLWIND1
		end
		if (j == 3) then
			area = AREA_SMALLWIND2
		end
		if (j == 4) then
			area = AREA_SMALLWIND3
		end
		addEvent(function() combat[j]:setArea(createCombatArea(area)) end, i * (j - 2) * 300)
		--maintain big tornadoes
		addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND3)) end, i * (j - 2) * 200)
	end
end
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND4)) end, 2800)
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND5)) end, 2900)
addEvent(function() combat[1]:setArea(createCombatArea(AREA_BIGWIND6)) end, 3000)
for i = 1, 4, 1 do
	function onGetFormulaValues(player, level, magicLevel)
		local min = (level / 5) + (magicLevel * 0.8) + 5
		local max = (level / 5) + (magicLevel * 2) + 12
		return -min, -max
	end
	combat[i]:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
end

local function castSpell(creatureId, variant, combatIndex)
    local creature = Creature(creatureId)
    if creature then
        combat[combatIndex]:execute(creature, variant)
    end
end

function onCastSpell(creature, variant)
	
	for i = 1, 4, 1 do
		addEvent(castSpell, 500 * i, creature:getId(), variant, i)
	end
	return combat[1]:execute(creature, variant)
end
