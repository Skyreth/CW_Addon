AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include('shared.lua')

function ENT:Initialize()

	self:SetModel("models/player/zelpa/male_10.mdl")
	self:SetHullType(HULL_HUMAN)
	self:SetNPCState(NPC_STATE_SCRIPT)
	self:SetMoveType(MOVETYPE_NONE)
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
	if Name == "Use" and Caller:IsPlayer() then
		net.Start("NPC", Caller)
		net.End()
	end
end
