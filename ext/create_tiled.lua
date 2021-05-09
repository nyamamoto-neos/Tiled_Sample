print("create")

local isSimulator = "simulator" == system.getInfo( "environment" )
local isMobile = ( "ios" == system.getInfo("platform") ) or ( "android" == system.getInfo("platform") )

-------------
require( "components.tiledmap.com.ponywolf.joykey" ).start()
if isMobile or isSimulator then
    local vjoy = require( "components.tiledmap.com.ponywolf.vjoy" )
    local stick = vjoy.newStick(1, "assets/images/p1/innerradius.png", "assets/images/p1/outerradius.png")
    stick.x, stick.y = display.contentCenterX, display.contentHeight - 24
    layer.stick = stick
end
-------------

local berry = require( 'components.tiledmap.ldurniat.berry' )
local physics = require( "physics" )

physics.start( )
physics.setDrawMode( 'hybrid' )
physics.setGravity(0,0)

layer.map = berry:new( 'components.tiledmap.page01_map', 'assets/images', nil, 'components.tiledmap.' )

---------------
-- use walker in the tiled map. waker and tileSet are replaced with  the ones in the tiled map
--
layer.walker.alpha = 0 -- or removeSelf()
layer.tileSet.alpha = 0

---------------
-- use the block animation of Kwik. the centerBlock of the tiled map is disabled
--
local block = layer.map:getObjects( { name="centerBlock" } )
layer.block.x = block.x
layer.block.y = block.y
block.alpha = 0 -- or removeSelf()
