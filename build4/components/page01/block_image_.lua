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
local imageWidth             = 216/4
local imageHeight            = 216/4
local mX, mY                 = _K.ultimatePosition(960, 640, "")
local oriAlpha = 1
--
local imageName = "/block.png"
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
    layer.block = display.newImageRect( _K.imgDir..imagePath, _K.systemDir, imageWidth, imageHeight)
    -- layer.block = newImageRect(block, imageWidth, imageHeight )
    if layer.block == nil then return end
    layer.block.imagePath = imagePath
    layer.block.x = mX
    layer.block.y = mY
    layer.block.alpha = oriAlpha
    layer.block.oldAlpha = oriAlpha
    layer.block.blendMode = ""
    layer.block.oriX = layer.block.x
    layer.block.oriY = layer.block.y
    layer.block.oriXs = layer.block.xScale
    layer.block.oriYs = layer.block.yScale
    layer.block.name = "block"
    sceneGroup.block = layer.block
          sceneGroup:insert( layer.block)
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