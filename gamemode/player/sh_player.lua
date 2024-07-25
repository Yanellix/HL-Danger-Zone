local meta = FindMetaTable("Player")


function meta:GetMoney()
    return self:GetNWInt("money")
end

function meta:GetExp()
    return self:GetNWInt("exp")
end

function meta:GetLvl()
    return self:GetNWInt("lvl")
end

function meta:CanAfford(price)
    local curmoney = self:GetNWInt("money")
    if curmoney >= price then return true else return false end
end