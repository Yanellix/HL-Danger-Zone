local meta = FindMetaTable("Player")

function meta:AddMoney(ammount)
    local curmoney = self:GetNWInt("money")
    return self:SetNWInt( "money", curmoney + ammount )
end

function meta:SetMoney(ammount)
    return self:SetNWInt( "money", ammount )
end

function meta:AddExp(ammount)
    local curmoney = self:GetNWInt("exp")
    return self:SetNWInt( "exp", curmoney + ammount )
end

function meta:SetExp(ammount)
    return self:SetNWInt( "exp", ammount )
end

function meta:AddLvl(ammount)
    local curmoney = self:GetNWInt("lvl")
    return self:SetNWInt( "lvl", curmoney + ammount )
end

function meta:SetLvl(ammount)
    return self:SetNWInt( "lvl", ammount )
end