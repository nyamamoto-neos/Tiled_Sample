-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local AnimationCommand = {}
local _K = require("Application")
local anim = requireKwik("components.page01.item_anim_wBounce_Box")
-----------------------------
-----------------------------
function AnimationCommand:new()
	local command = {}
	--
	function command:execute(params)
		local UI    = params.event.UI
		local phase = params.event.phase
		if phase == "didShow" then
			anim:repoHeader(UI)
			anim:buildAnim(UI)
		elseif phase=="dispose" then
			anim:toDispose()
		elseif phase=="play" then
			anim:play()
		end
	end
	return command
end
--
return AnimationCommand