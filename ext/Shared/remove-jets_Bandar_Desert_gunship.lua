-- Bandar Desert
local partitionGuid = Guid('B8A00A4A-1583-4B0A-A7BB-EA1C1CC830AB')
local flagGuids = {
  GS= Guid('BBAC4363-6294-405D-B986-3F849FB41092'), -- this removes the gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end