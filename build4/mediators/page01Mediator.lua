-- Code created by Kwik - Copyright: kwiksher.com 2016, 2017, 2018, 2019, 2020
-- Version: 
-- Project: Tiled
--
local PageViewMediator = {}
--
function PageViewMediator:new()
  local mediator = {}
  --
  function mediator:onRegister()
    local view = self.viewInstance
    -- Scene
    view:addEventListener("hide", self)
        view:addEventListener("block_anim_wRotation_block", self)
    end
  --
  function mediator:onRemove()
    local view = self.viewInstance
        view:removeEventListener("block_anim_wRotation_block", self)
    end
  --
  function mediator:hide(event)
    Runtime:dispatchEvent({name=".hide", event=event, UI = self.viewInstance.pageUI})
  end
    function mediator:block_anim_wRotation_block(event)
    Runtime:dispatchEvent({name="page01.block_anim_wRotation_block", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
  --
  return mediator
end
--
return PageViewMediator