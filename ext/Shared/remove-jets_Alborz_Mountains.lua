-- Alborz Mountains
local partitionGuid = Guid('E3803DDE-3E34-4CAD-A50F-80A1072EDE9D')
local flagGuids = {
  F18a= Guid('BA0FEEEB-15FA-48AE-8658-8E1E647EB05E'), -- F18
  F18b= Guid('A68D9C32-7591-4BC2-8564-12F0793F9EB5'), -- F18
 SU35a= Guid('B93A7C9E-CACB-46B9-AC8D-BC9346706E7D'), -- SU35
 SU35b= Guid('59EF7E00-1DC9-4B02-9034-8322BE8A5880'), -- SU35
    GS= Guid('2B23D93E-5A61-4700-B447-3AE38342E4FD'), -- Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end