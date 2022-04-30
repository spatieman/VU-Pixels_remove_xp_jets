-- Armored Shield
local partitionGuid = Guid('08DF85B9-1DFF-462D-AD1A-A88F8FD0D786')
local flagGuids = {
  GS= Guid('593B8513-A40A-4ABB-9456-71140445593C'),   -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end