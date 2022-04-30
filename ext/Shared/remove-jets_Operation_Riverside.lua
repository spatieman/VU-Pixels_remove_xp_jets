-- Operation Riverside
local partitionGuid = Guid('4B2F9A57-E58C-412A-A4CF-244F0727738A')
local flagGuids = {
  GS= Guid('D131BDBD-8ACA-48BF-BA4E-15812997DE3B'),   -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end