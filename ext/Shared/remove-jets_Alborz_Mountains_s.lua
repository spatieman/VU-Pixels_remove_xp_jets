-- Alborz Mountains
local partitionGuid = Guid('52FA8488-9F1C-4879-95ED-117B7A6952A3')
local flagGuids = {
  F18a= Guid('4CD9A597-1CAE-48A7-8CDD-4960D3F39075'), -- F18
  F18b= Guid('79D2C6AC-8855-4251-AC3F-1453F2F3DB15'), -- F18
 SU35a= Guid('BC4A0E64-D88E-40BC-80BE-F73C8E90E7B5'), -- SU35
 SU35b= Guid('7E9C688A-BF56-4012-9E2F-17A89617DE9E'), -- SU35
    GS= Guid('27461339-6762-415B-B1A9-0FCD136AFFCB'), -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end