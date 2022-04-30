-- Kiasar Railroad CQ-L
local partitionGuid = Guid('92266264-F68F-4EF5-82A9-E611DD6D5BE3')
local flagGuids = {
  GS= Guid('C4144218-0A50-42AA-B87D-E75A85798776'), -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end