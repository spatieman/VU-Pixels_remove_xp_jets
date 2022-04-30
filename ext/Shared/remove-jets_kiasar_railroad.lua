-- Kiasar Railroad CQ-L
local partitionGuid = Guid('8A1B5CE5-A537-49C6-9C44-0DA048162C94')
local flagGuids = {
  GS= Guid('86BFA7DC-4233-4FE3-91C9-BA4C746A1873'), -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end