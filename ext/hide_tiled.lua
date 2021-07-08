print("hide")
--- remove the listeners
Runtime:removeEventListener( "enterFrame", UI.enterFrame )
Runtime:removeEventListener( "key", UI.key )

--- remove the map
layer.map:removeSelf()
