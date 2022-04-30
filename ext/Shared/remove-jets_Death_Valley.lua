-- Death Valley
local partitionGuid = Guid('EF521C73-69B0-4530-9D00-28DBD770DFFB')
local flagGuids = {
  GS= Guid('ACAB6C11-BB1D-4B14-A41D-BE312EE049F2'), -- Gunship removed
  F18A= Guid('D61B8079-3ED2-434E-B61F-34D47D9D590F'), -- F18 removed
  F18B= Guid('FFB0109E-39FE-4697-976B-7E1AECE9CDCC'), -- F18 removed
  SU35A= Guid('04EA5EA4-864D-4733-8057-156A43F55DCA'),  -- SU35 removed
  SU35BD= Guid('99EEC3AC-4BE0-421E-AFC2-13A554E3FB51'), -- SU35 removed
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end