AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("player/sv_player.lua")
AddCSLuaFile("player/sh_player.lua")
AddCSLuaFile("player/sh_player.lua")
AddCSLuaFile("cl_hud.lua")
AddCSLuaFile("cl_menu.lua")
AddCSLuaFile("fmenu.lua")
AddCSLuaFile("cl_scoreboard.lua")


include("shared.lua")
include("player/sv_player.lua")
include("player/sh_player.lua")
include("sv_saveload.lua")
include("admin/sv_admin.lua")

util.AddNetworkString( "FMENU" )
function GM:ShowSpare2(ply)
    net.Start( "FMENU" )
    net.Broadcast()
end