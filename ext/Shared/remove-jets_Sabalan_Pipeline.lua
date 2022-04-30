-- Sabalan Pipeline
local partitionGuid = Guid('1CF2DA40-96FD-4C97-9C59-625CFEED45FA')
local flagGuids = {
  F18a= Guid('7CF4B9BD-3696-4A4A-8EAB-AF71F1596C3A'), -- F18
  F18b= Guid('ED74A603-3EDF-40D3-BD8C-ED0E7F46052C'), -- F18
  F18c= Guid('32F525AB-B7E7-44C3-892A-D5A171AE0496'), -- F18
  F18d= Guid('F83FD193-1D6A-497B-8D99-BE3EDE78405D'), -- F18
  F18e= Guid('6FB0AACC-0A9F-4094-B580-4B30BD55F395'), -- F18
  F18f= Guid('7F8867CC-2655-4F9D-A7FB-4F2E7A89BC6E'), -- F18

  SU35a= Guid('8454F6A0-555A-4EB9-9CDA-61CD3503BC04'), -- SU35
  SU35b= Guid('0DBA65C4-D059-4B51-9C53-4CD1F03AC10E'), -- SU35
  SU35c= Guid('6C746846-28AF-4059-BC2C-AF767E388960'), -- SU35 
  SU35d= Guid('73056D55-8866-4260-AA9E-ABD638CBB8E4'), -- SU35
  SU35e= Guid('4F52C35A-C06A-480E-B14A-6545F3E4DA25'), -- SU35
  SU35f= Guid('EC712CF4-3607-4793-9B44-BCEE439B11B9'), -- SU35
     GS= Guid('964E093D-2832-472F-B4C3-C5232A18746A')  -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end