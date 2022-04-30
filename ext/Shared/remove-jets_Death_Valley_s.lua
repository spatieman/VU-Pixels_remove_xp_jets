-- Death Valley
local partitionGuid = Guid('85DC8F08-FB37-4CC2-820A-9DDE1EA4039C')
local flagGuids = {
  GS= Guid('ECAE30E7-142E-4009-BD63-A62CD7BFAD39'), -- Gunship removed
  F18A= Guid('A17A8243-142D-4622-B35B-AD4CC6ACDF55'), -- F18 removed
  F18B= Guid('4B4C1595-D81D-4776-95C4-B810ED691E73'), -- F18 removed
  SU35A= Guid('AD40A50B-2E6A-4A95-906E-80764D1A931D'), -- SU35 removed
  SU35BD= Guid('73EB6439-C076-4A54-B964-2A24E14A2C67'),    -- SU35 removed
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end