ENT.BASE = "base_ia"
ENT.TYPE = "ai"
ENT.PrintName = "Npc Garage"
ENT.Author = "Skyreth"
ENT.Category = "NPC Skyreth"
ENT.Contact = "N/A"
ENT.Purpose = "N/A"
ENT.Instructions = "Press E (Use touch)"
ENT.Spawnable = false
ENT.AdminSpawnable = true
ENT.AutomaticFrameAdvance = true

function ENT:SetAutomaticFrameAdvance(bUsingAnim)
	self.SetAutomaticFrameAdvance = bUsingAnim
end
