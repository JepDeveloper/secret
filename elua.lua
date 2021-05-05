-- TELEPORT BYPASS
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end

-- VARIABLES
local mobs = {} -- MOBS TABLE
getgenv().mob = nil -- SELECTED MOB

-- MOBS
for _,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do -- LOOPS THROUGH ALL MOBS
    insert = true -- VALUE TO CHECK THE MOB
    for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end -- CHECKS IF MOB IS ALREADY IN THE TABLE
    if insert then table.insert(mobs, v.Name) end -- IF THE MOB ISNT INSERTED THEN INSERT IT
end
