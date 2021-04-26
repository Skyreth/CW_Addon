include("shared.lua")

function NPC(ply)

	local DFrame = vgui.Create( "Garage" ) 
	DFrame:SetPos( 100, 100 ) 			
	DFrame:Center() 
	DFrame:SetSize( 300, 200 ) 				
	DFrame:SetTitle( "Garage" ) 		
	DFrame:MakePopup() 	

end