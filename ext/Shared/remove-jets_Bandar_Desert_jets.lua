-- Bandar Desert
local partitionGuid = Guid('D54BF4AA-3162-4701-86E6-B4B64466EF18')
local flagGuids = {
  SU35a= Guid('464CA293-E008-4692-941F-C6CA865D3967'), -- this removes the SU35
  SU35b= Guid('B5FF7E79-E2D5-41DA-BA22-054A4CDA4C41'), -- this removes the SU35
  F18a= Guid('849EF137-A18B-4708-A0DC-34D9717F083F'), -- this removes the F18
  F18b= Guid('F338F5EB-A6A4-4785-85FD-2772B987772D'), -- this removes the F18
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end