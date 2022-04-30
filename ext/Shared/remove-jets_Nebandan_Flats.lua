-- Nebandan Flats
local partitionGuid = Guid('A87FD3BE-EF7F-487D-A90E-7208E956C6C6')
local flagGuids = {
  F18a= Guid('5F677920-E3D7-4FA8-A320-0BF4CB3E010D'), -- F18
  F18b= Guid('37671EED-5CE9-43F4-BDC5-0425CFFF7FA7'), -- F18
  F18c= Guid('8E7D0965-129D-434B-9EEE-90E8C7BF6A4B'), -- F18
  F18d= Guid('67C1202E-5DD6-4CA7-BC70-94872F6640C1'), -- F18 
  F18e= Guid('30C2201B-92FC-42F3-82F2-EF3CD4C9C194'), -- F18
  F18f= Guid('C540F9FE-3002-4BD8-A8BC-DCA1F42825A6'), -- F18

  SU35a= Guid('32EB4330-2F12-4067-88A9-0F924F1194E2'),  -- SU35
  SU35b= Guid('2C918195-7A81-4DCC-AF46-D5E5B922CB89'),  -- SU35
  SU35c= Guid('4ECAAE6C-1959-4DF2-80B0-E6C9154CB688'),  -- SU35
  SU35d= Guid('E9B9CA26-1B30-4256-BE81-D7C77D7F473B'),  -- SU35
  SU35e= Guid('901FEA9E-3DCA-4ACA-9EAA-C669AF55993C'),  -- SU35
  SU35f= Guid('C712A08A-5124-4267-B4DA-581540CCD058'),  -- SU35
     GS= Guid('E47375A5-3772-4C47-B0A1-102166CA78C1')  -- Dropship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end