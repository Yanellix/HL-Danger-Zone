local hidelist = {"CHudAmmo", "CHudSecondaryAmmo", "CHudBattery", "CHudCrosshair", "CHudHealth", "CHudZoom", "CHudSuitPower", "CHUDQuickInfo"}
function HideHud(name)

    for k, v in ipairs(hidelist) do
        if name == v then
            return false
        end
    end

end
hook.Add("HUDShouldDraw", "DisableDefaultHUD", HideHud)

local hpBarWidth = 900
local hpBarHeight = 7
local armorBarWidth = 900
local armorBarHeight = 7
local barSpacing = 2
local barX = ScrW() - 1910
local barY = ScrH() - 1070
local hpSmooth = 0
local armorSmooth = 0

hook.Add("HUDPaint", "CustomHUD", function()
    local client = LocalPlayer()
    local hp = client:Health()
    local armor = client:Armor()


    -- Плавная анимация полосок
    hpSmooth = Lerp(0.1, hpSmooth, hp)
    armorSmooth = Lerp(0.1, armorSmooth, armor)

    -- Полоска здоровья
    surface.SetDrawColor(50, 50, 50, 200)
    surface.DrawRect(barX, barY, hpBarWidth, hpBarHeight)

    surface.SetDrawColor(200, 0, 0, 255)
    surface.DrawRect(barX, barY, hpSmooth / 100 * hpBarWidth, hpBarHeight)

    -- Полоска брони
    surface.SetDrawColor(50, 50, 50, 200)
    surface.DrawRect(barX, barY + hpBarHeight + barSpacing, armorBarWidth, armorBarHeight)

    surface.SetDrawColor(0, 0, 200, 255)
    surface.DrawRect(barX, barY + hpBarHeight + barSpacing, armorSmooth / 100 * armorBarWidth, armorBarHeight)

    -- Рамки полосок
    surface.SetDrawColor(255, 255, 255, 255)
    surface.DrawOutlinedRect(barX, barY, hpBarWidth, hpBarHeight)
    surface.DrawOutlinedRect(barX, barY + hpBarHeight + barSpacing, armorBarWidth, armorBarHeight)

end) 

