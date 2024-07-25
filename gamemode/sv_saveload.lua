hook.Add("PlayerInitialSpawn", "LoadPlayerData", function(ply)
    local id = ply:SteamID()
    local exp = util.GetPData( id, "exp", nil)
    local lvl = util.GetPData( id, "lvl", nil)
    local money = util.GetPData( id, "money", nil)
    local pos = util.GetPData( id, "pos", nil)
    if exp then
        ply:SetExp( exp )
    end
    if lvl then
        ply:Setlvl( lvl )
    end
    if money then
        ply:SetMoney( money )
    end
    if pos then
        ply:SetPos( pos + Vector( 0, 2, 0 ))
    end

end)

hook.Add( "PlayerDisconnected", "SavePlayerData", function(ply)
    local id = ply:SteamID()
    local exp = ply:GetExp()
    local lvl = ply:GetLvl()
    local money = ply:GetMoney()
    local pos = ply:GetPos()

    if !id then id = ply:SteamID() end
    util.SetPData( "money", money )
    util.SetPData( "pos", pos )
    util.SetPData( "lvl", lvl )
    util.SetPData( "exp", exp )
end )