-- Bandar Desert
local partitionGuid = Guid('43087A6A-79AE-43B3-85A7-88162A532E50')
local flagGuids = {
  SU35a= Guid('249B8802-DD05-4446-9122-5356E863926A'), -- this removes the SU35
  SU35b= Guid('A1A9229A-39E5-4CB5-90FB-01075B528CEF'), -- this removes the SU35
  F18a= Guid('9CB33876-3DC8-4A7E-92C4-EAD0B330385E'), -- this removes the F18
  F18b= Guid('28D0791F-E988-48F9-8EEB-077B13C0693A'), -- this removes the F18
  GS= Guid('8EA65082-E114-4B8E-929D-D90E8B9E3491'), -- this removes the Gunship
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end