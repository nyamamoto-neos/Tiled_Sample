-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local _Class = {}
--
function _Class:new(super)
	local context = super
	--
	function context:init()
------------------------------------------------------------
------------------------------------------------------------
				self:mapMediator("views.page01Scene", "mediators.page01Mediator")
		--
        _K = require("Application")
				self:mapCommand("page01.block_anim_wRotation_block", _K.appDir.."commands.page01.block_anim_wRotation_block")
		--
	end
  --
  function context:addInitializer(t)
  	local t = require(t)
  	for k,v in pairs(t) do self.Router[k] = v end
  end
  --
	return context
end
--
return _Class