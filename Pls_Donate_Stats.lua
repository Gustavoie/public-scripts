repeat wait()until game:IsLoaded()local function a()local b="playing"local c=game:GetService("HttpService")local d,e=pcall(function()return c:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?limit=100")).data end)if not d then return end;local f=e[5]for g,h in pairs(e)do if h[b]<f[b]then f=h end end;game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,f.id)end;local i=loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()getgenv()["IrisAd"]=true;local function j(l,m)i.Notify(l,m,"http://www.roblox.com/asset/?id=161551681",{Duration=4,Main={Rounding=true}})end;local function n(l,m)i.Notify(l,m,"http://www.roblox.com/asset/?id=4914902889",{Duration=4,Main={Rounding=true}})end;local function o(p)local q=p;while true do q,k=string.gsub(q,"^(-?%d+)(%d%d%d)",'%1,%2')if k==0 then break end end;return q end;local r=0;local s=false;_G.MinimumDonated=_G.MinimumDonated;for t,u in pairs(game:GetService("Players"):GetPlayers())do if u~=game:GetService('Players').LocalPlayer and u.leaderstats:FindFirstChild("Donated")and u.leaderstats:FindFirstChild("Donated").Value>_G.MinimumDonated then n(u.Name.."@"..u.DisplayName.." has more than ",o(_G.MinimumDonated).." in donations!")s=true;r=r+1 end end;if not s then j("Nobody in the game has more than",o(_G.MinimumDonated).." in donations!")wait(2)n("Please wait...","Switching Servers")a()else n("There's "..r.." people","that have more than "..o(_G.MinimumDonated).." in donations!")end
