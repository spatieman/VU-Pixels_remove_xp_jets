-- Nebandan Flats
local partitionGuid = Guid('108545B9-878C-4758-BD15-A37775B9B4C3')
local flagGuids = {
  F18a= Guid('5E42C72A-901B-4C05-BA45-032158DC3EB4'), -- F18
  F18b= Guid('DBC51819-EAFD-402F-B32B-1CE5991AF4F8'), -- F18
  F18c= Guid('BD68764D-0F73-441A-A197-B872A6627C59'), -- F18
  F18d= Guid('B01B755B-0070-4EAA-9730-695BA3C5923C'), -- F18 
  F18e= Guid('5670DE68-9A6B-4AAD-B680-6B1708C0A6B2'), -- F18
  F18f= Guid('33CA8591-2A6A-409B-99E7-B8F515DF6BC5'), -- F18

  SU35a= Guid('A8EBF149-6E1E-4C00-8FBC-07E262823C49'),  -- SU35
  SU35b= Guid('11806CBB-649C-4315-9A32-91445531A174'),  -- SU35
  SU35c= Guid('2FEC16C5-A501-48DD-81F5-52A81AD1492A'),  -- SU35
  SU35d= Guid('56311743-98DC-4694-B8FD-EC204B8FD2C4'),  -- SU35
  SU35e= Guid('2F3CA3F4-2746-4E46-9E32-D993D883FEA9'),  -- SU35
  SU35f= Guid('C8C93B5B-4FA9-4DE8-83C5-DF69EF45C215'),  -- SU35

     GS= Guid('83EB2FE8-8527-4766-A245-3D9AAD64B907')  -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end