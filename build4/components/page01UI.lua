-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local _Class   = {}
local layerUI  = require("components.kwik.layerUI")
local const    = require("vo.page01VO").const
local composer = require( "composer" )
local _K       = require("Application")
---------------------
---------------------
_Class.new = function(scene, imagePage)
  local UI = layerUI.new()
    UI.scene     = scene
    UI.page      = "page01"
    UI.imagePage = imagePage or 01
    UI.curPage   = 01
    -- All components on a table
    UI.layer     = {}
    -- All audio files on a table
    UI.allAudios = {}
    UI.allAudios.kAutoPlay = 0
    UI.tSearch   = nil
    UI.numPages = 1   -- number of pages in the project
        --_K.systemDir = system.ResourceDirectory
    function UI:setLanguge()
      end
  --
  function UI:setVars()
          self:_vars("ext_lib_code",  const.page_ext_lib_code_, false)
        self:_vars("image",  const.map_image_, false)
        self:_vars("image",  const.block_image_, false)
        self:_vars("image",  const.outerRadius_image_, false)
        self:_vars("image",  const.innerRadius_image_, false)
        self:_vars("image",  const.walker_image_, false)
        self:_vars("image",  const.tileSet_image_, false)
        self:_vars("swipe",  const.page_swipe_map, false)
        self:_vars("anim",  const.block_anim_wRotation_block, false)
    end
  --
  function UI:create()
   self:_create("common",  const.page_common, false)
    self:setVars()
    self:setLanguge()
        self:_create("image",  const.map_image_, false)
        self:_create("image",  const.block_image_, false)
        self:_create("image",  const.outerRadius_image_, false)
        self:_create("image",  const.innerRadius_image_, false)
        self:_create("image",  const.walker_image_, false)
        self:_create("image",  const.tileSet_image_, false)
        self:_create("swipe",  const.page_swipe_map, false)
        self:_create("anim",  const.block_anim_wRotation_block, false)
          self:_create("ext_lib_code",  const.page_ext_lib_code_, false)
    end
  --
  function UI:didShow(params)
    self:_didShow("common",  const.page_common, false)
        self:_didShow("image",  const.map_image_, false)
        self:_didShow("image",  const.block_image_, false)
        self:_didShow("image",  const.outerRadius_image_, false)
        self:_didShow("image",  const.innerRadius_image_, false)
        self:_didShow("image",  const.walker_image_, false)
        self:_didShow("image",  const.tileSet_image_, false)
        self:_didShow("swipe",  const.page_swipe_map, false)
        self:_didShow("anim",  const.block_anim_wRotation_block, false)
          self:_didShow("ext_lib_code",  const.page_ext_lib_code_, false)
    end
  --
  function UI:didHide(params)
    self:_didHide("common",  const.page_common, false)
        self:_didHide("image",  const.map_image_, false)
        self:_didHide("image",  const.block_image_, false)
        self:_didHide("image",  const.outerRadius_image_, false)
        self:_didHide("image",  const.innerRadius_image_, false)
        self:_didHide("image",  const.walker_image_, false)
        self:_didHide("image",  const.tileSet_image_, false)
        self:_didHide("swipe",  const.page_swipe_map, false)
        self:_didHide("anim",  const.block_anim_wRotation_block, false)
          self:_didHide("ext_lib_code",  const.page_ext_lib_code_, false)
    end
  --
  function UI:destroy(params)
    self:_destroy("common",  const.page_common)
        self:_destroy("image",  const.map_image_, false)
        self:_destroy("image",  const.block_image_, false)
        self:_destroy("image",  const.outerRadius_image_, false)
        self:_destroy("image",  const.innerRadius_image_, false)
        self:_destroy("image",  const.walker_image_, false)
        self:_destroy("image",  const.tileSet_image_, false)
        self:_destroy("swipe",  const.page_swipe_map, false)
        self:_destroy("anim",  const.block_anim_wRotation_block, false)
          self:_destroy("ext_lib_code",  const.page_ext_lib_code_, false)
    end
  --
  function UI:touch(event)
      print("event.name: "..event.name)
  end
  function UI:resume(params)
        self:_resume("image",  const.map_image_, false)
        self:_resume("image",  const.block_image_, false)
        self:_resume("image",  const.outerRadius_image_, false)
        self:_resume("image",  const.innerRadius_image_, false)
        self:_resume("image",  const.walker_image_, false)
        self:_resume("image",  const.tileSet_image_, false)
        self:_resume("swipe",  const.page_swipe_map, false)
        self:_resume("anim",  const.block_anim_wRotation_block, false)
    end
  --
  return  UI
end
--
return _Class