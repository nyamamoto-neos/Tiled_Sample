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
  -- UI.scene:dispatchEvent({name="item_anim_wBounce_Box", phase = "didShow", UI=UI})	}
  self:repoHeader(UI)
  self:buildAnim(UI)
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
	if layer.item == nil then return end
	layer.item.xScale = layer.item.oriXs
	layer.item.yScale = layer.item.oriYs
			local wBounce_Box = function(event)
			if _K.gt.wBounce_Box then
				_K.gt.wBounce_Box:toBeginning()
			end
		end -- end of function
				local _restart = false
		local onEnd__1001 = function()
				if _restart then
												layer.item.x				 = layer.item.oriX
						layer.item.y				 = layer.item.oriY
						layer.item.alpha		 = layer.item.oldAlpha
						layer.item.rotation	= 0
						layer.item.isVisible = true
						layer.item.xScale		= layer.item.oriXs
						layer.item.yScale		= layer.item.oriYs
												end
				end --ends reStart for wBounce_Box
											local mX, mY = getPos(layer.item, 1344, 833)
								_K.gt.wBounce_Box = _K.gtween.new(
					layer.item,
					3,
										{
													y=mY,
						},
					{
						ease = _K.gtween.easing.Linear,
						repeatCount = 6,
						reflect = true,
						delay=0.1,
						onComplete=onEnd__1001
						})
							_K.gt.wBounce_Box:pause()
				-- _K.gt.wBounce_Box:toBeginning()
	  		--
	-- wBounce_Box()
end
--
function _M:play(UI)
			-- _K.gt.wBounce_Box:toBeginning()
		_K.gt.wBounce_Box:play()
	end
--
function _M:resume(UI)
			_K.gt.wBounce_Box:play()
	end
--
return _M