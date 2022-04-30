-- Sabalan Pipeline
local partitionGuid = Guid('D1AA1569-297F-4EDA-8606-0568069E03B0')
local flagGuids = {
  F18a= Guid('CCC8E6F6-A1E7-4AC8-BDF1-143E71B82998'), -- F18
  F18b= Guid('3671E512-7291-45E8-B1F2-D7DFE7530FA1'), -- F18
  F18c= Guid('98B000DC-59EF-4E85-93B4-B9775F760ED6'), -- F18
  F18d= Guid('033FCE2D-82EA-46C3-B0F4-54E198ACCC01'), -- F18
  F18e= Guid('8F9F2DBD-7ADD-4F21-8F5C-106E18CE877D'), -- F18
  F18f= Guid('6FCC0D03-0B01-4840-8326-30A8E45330A3'), -- F18

  SU35a= Guid('4D56788A-D71D-43C6-B5BD-2CC6A7F7682A'), -- SU35
  SU35b= Guid('1447CACC-CD79-469D-80B7-21022B42E1AE'), -- SU35
  SU35c= Guid('A8EFD2AD-8499-4081-9A66-114C69519986'), -- SU35 
  SU35d= Guid('F0934F5C-EC0A-47F7-B73C-09AFBC6BA063'), -- SU35
  SU35e= Guid('F1B368D4-9687-4205-B1B6-106A5DA11837'), -- SU35
  SU35f= Guid('795952C3-9168-40E1-8615-E9E0D645F239'), -- SU35
     GS= Guid('EC4090FC-B309-4319-9F9F-54357AB2EA27')  -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end