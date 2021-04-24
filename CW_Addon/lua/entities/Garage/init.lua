AddCSLuaFile("shared.lua")

include('shared.lua')

function ENT:Initialize()

	self:SetModel("models/player/zelpa/male_10.mdl")
	self:SetHullType(HULL_HUMAN)
	self:SetNPCState(NPC_STATE_SCRIPT)
	self:SetSolid(SOLID_BBOX)
	self:CapabilitiesAdd(CAP_ANIMATEDFACE)
	self:SetUseType(SIMPLE_USE)
	self:DropToFloor()
	self:SetMaxYawSpeed(90)
end

function ENT:OnTakeDamage()
	return false
end

function ENT:AcceptInput(ply, Name, Activator, Caller)

	if Name = "Use" and Caller:IsPlayer() then
		umsg.Start("NPC", Caller)
		umsg.End()
	end
end

function NPC (ply)

	local DFrame = vgui.Create( "Garage" ) 
	DFrame:SetPos( 100, 100 ) 			
	DFrame:Center() 
	DFrame:SetSize( 300, 200 ) 				
	DFrame:SetTitle( "Garage" ) 		
	DFrame:MakePopup() 				

end