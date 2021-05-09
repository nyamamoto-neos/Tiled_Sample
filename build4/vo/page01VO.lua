-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local VO = {}
VO.field = "page01" --
---------------------
---------------------
local Const = require("extlib.const")
VO.const = Const:new{
	"page_common",
    		"page_ext_lib_code_",
    		"map_image_",
			"block_image_",
			"outerRadius_image_",
			"innerRadius_image_",
			"walker_image_",
			"tileSet_image_",
			"page_swipe_map",
			"block_anim_wRotation_block",
	}
---------------------
---------------------
VO.new = function(val)
	local vo = {
	page_common = val.page_common,
					page_ext_lib_code_ = val.page_ext_lib_code_,
    				map_image_ = val.map_image_,
					block_image_ = val.block_image_,
					outerRadius_image_ = val.outerRadius_image_,
					innerRadius_image_ = val.innerRadius_image_,
					walker_image_ = val.walker_image_,
					tileSet_image_ = val.tileSet_image_,
					page_swipe_map = val.page_swipe_map,
					block_anim_wRotation_block = val.block_anim_wRotation_block,
		}
	--
	function vo:copyFrom(copyVO)
	end
	--
	function vo:valueOf()
		return baseDir.."/"..self.filename
	end
	--
	return vo
end
--
VO.equal = function(vo1, vo2)
	return vo1.valueOf() == vo2.valueOf()
end
--
return VO