-- Operation Riverside
local partitionGuid = Guid('AA37AC43-DF9A-4B4E-978E-17D4C71ACABC')
local flagGuids = {
  GS= Guid('3C841328-721C-4304-A163-B06A7C7E96D1'),   -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end