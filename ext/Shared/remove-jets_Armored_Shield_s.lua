-- Armored Shield
local partitionGuid = Guid('5B3A3911-4280-445E-AD60-E6535F6672C3')
local flagGuids = {
  GS= Guid('4C926B3D-970F-4B37-9E7B-EAE9F18DB216'),   -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end