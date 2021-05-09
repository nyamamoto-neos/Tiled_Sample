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
-- not
local imageWidth             = 66/4
local imageHeight            = 66/4
local mX, mY                 = _K.ultimatePosition(511, 1145, "")
local oriAlpha = 1
--
local imageName = "/walker.png"
--
function _M:localVars(UI)
		local imagePath = "p"..UI.imagePage ..imageName
   end
--
--[[
local info     = require ("assets.sprites.".."page1")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page1.png", _K.systemDir, info:getSheet() )
local sequence = {start=1, count= #info:getSheet().frames }
function newImageRect(name, width, height)
  local image
  if string.find(name, "background") == nil then
      image = display.newSprite(sheet, sequence)
      image.name = name
      image:setFrame (info:getFrameIndex (name))
      image.width, image.height = width, height
      else
       image = display.newImageRect(_K.imgDir..name.."."..png, _K.systemDir, width, height)
      end
   return image
end
--]]
--
function _M:localPos(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
		local imagePath = "p"..UI.imagePage ..imageName
    local function myNewImage()
    layer.walker = display.newImageRect( _K.imgDir..imagePath, _K.systemDir, imageWidth, imageHeight)
    -- layer.walker = newImageRect(walker, imageWidth, imageHeight )
    if layer.walker == nil then return end
    layer.walker.imagePath = imagePath
    layer.walker.x = mX
    layer.walker.y = mY
    layer.walker.alpha = oriAlpha
    layer.walker.oldAlpha = oriAlpha
    layer.walker.blendMode = ""
    layer.walker.oriX = layer.walker.x
    layer.walker.oriY = layer.walker.y
    layer.walker.oriXs = layer.walker.xScale
    layer.walker.oriYs = layer.walker.yScale
    layer.walker.name = "walker"
    sceneGroup.walker = layer.walker
          sceneGroup:insert( layer.walker)
    --
    end
    myNewImage()
end
--
function _M:didShow(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function _M:toDispose(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function  _M:toDestory()
end
--
return _M