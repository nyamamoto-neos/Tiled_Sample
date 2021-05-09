-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local _M = {}
--
local _K = require "Application"
--
function _M:myMain()
end
--
function _M:localVars ()
end
--
function _M:localPos()
end
--
function _M:didShow(UI)
  -- UI.scene:dispatchEvent({name="block_anim_wRotation_block", phase = "didShow", UI=UI})	}
  self:repoHeader(UI)
  self:buildAnim(UI)
				--	if _K.gt.wRotation_block then
	--		_K.gt.wRotation_block:play()
	--	end
		end
--
function _M:toDispose()
	_K.cancelAllTweens()
	_K.cancelAllTransitions()
end
--
function _M:toDestory()
end
--
--
local function getPos(layer, _endX, _endY)
	local endX, endY =  _K.ultimatePosition(_endX, _endY)
	local width, height = layer.width*layer.xScale, layer.height*layer.yScale
	    mX = endX + width/2
    mY = endY + height/2
	return mX, mY
end
--
function _M:repoHeader(UI)
	local layer = UI.layer
	end
--
local function getPath(t)
    local _t = {}
    _t.x, _t.y =  _K.ultimatePosition(t.x, t.y)
    return _t
end
--
function _M:buildAnim(UI)
	local layer = UI.layer
	local sceneGroup = UI.scene.view
	-- Wait request for '+gtName+'\r\n';
	if layer.block == nil then return end
	layer.block.xScale = layer.block.oriXs
	layer.block.yScale = layer.block.oriYs
			local wRotation_block = function(event)
			if _K.gt.wRotation_block then
				_K.gt.wRotation_block:toBeginning()
			end
		end -- end of function
				local _restart = false
		local onEnd__1001 = function()
				if _restart then
												layer.block.x				 = layer.block.oriX
						layer.block.y				 = layer.block.oriY
						layer.block.alpha		 = layer.block.oldAlpha
						layer.block.rotation	= 0
						layer.block.isVisible = true
						layer.block.xScale		= layer.block.oriXs
						layer.block.yScale		= layer.block.oriYs
												end
				end --ends reStart for wRotation_block
											local mX, mY = getPos(layer.block, 852, 532)
								_K.gt.wRotation_block = _K.gtween.new(
					layer.block,
					10,
										{
													rotation = 360,
						},
					{
						ease = _K.gtween.easing.Linear,
						repeatCount = math.huge,
						reflect = false,
						delay=0.1,
						onComplete=onEnd__1001
						})
			-- _K.gt.wRotation_block:toBeginning()
	  		--
	-- wRotation_block()
end
--
function _M:play(UI)
			-- _K.gt.wRotation_block:toBeginning()
		_K.gt.wRotation_block:play()
	end
--
function _M:resume(UI)
			_K.gt.wRotation_block:play()
	end
--
return _M