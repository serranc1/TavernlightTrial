jumpButton = nil
jumpWindow = nil

function init()
  jumpButton = modules.client_topmenu.addRightToggleButton('jumpButton', tr('Jump'), '/jump/jump/jump', closing)
  jumpButton:setOn(false)
  jumpWindow = g_ui.displayUI('jump')
  jumpWindow:setVisible(false)
end

function terminate()
  jumpButton:destroy()
  jumpWindow:destroy()
end

function jumping()
  --on click or jump button reaches left border, shift jump button position to a set x position and randomized y position within the window
  --if jumpButton:isOn() or  jumpButton:xPosition <= jumpWindow:width + jumpButton:width / 2 then
	  --jumpButton:setPosition(jumpWindow:width - jumpButton:width / 2, math.random(jumpWindow:height -  jumpButton:height, jumpButton:height)
  --end
end

function onMiniWindowClose()
  jumpButton:setOn(false)
end
