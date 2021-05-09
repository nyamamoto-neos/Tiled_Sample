return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.6.0",
  name = "page01_tileset",
  tilewidth = 16,
  tileheight = 16,
  spacing = 0,
  margin = 0,
  columns = 2,
  image = "../../assets/images/p1/tileset.png",
  imagewidth = 32,
  imageheight = 32,
  objectalignment = "unspecified",
  tileoffset = {
    x = 0,
    y = 0
  },
  grid = {
    orientation = "orthogonal",
    width = 16,
    height = 16
  },
  properties = {},
  wangsets = {},
  tilecount = 4,
  tiles = {
    {
      id = 0,
      type = "wall",
      properties = {
        ["bodyType"] = "static",
        ["hasBody"] = true
      }
    },
    {
      id = 1,
      type = "enemy",
      properties = {
        ["bodyType"] = "dynamic",
        ["hasBody"] = true
      }
    },
    {
      id = 2,
      type = "sensor",
      properties = {
        ["bodyType"] = "kinematic",
        ["hasBody"] = true,
        ["isAnimated"] = true,
        ["name"] = "itemAnim"
      },
      animation = {
        {
          tileid = 2,
          duration = 1000
        },
        {
          tileid = 3,
          duration = 1000
        }
      }
    }
  }
}
