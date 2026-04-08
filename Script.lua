-- โหลดสคริปหลักของมึง
loadstring(game:HttpGet("https://raw.githubusercontent.com/xidin861-star/All-one-script-tsb-fps/main/Script.lua"))()

-- 🔻 FPS BOOST โหดๆ 🔻
local workspace = game:GetService("Workspace")

-- 🪵 ลบต้นไม้ + ของตกแต่งแมพ
for _,v in pairs(workspace:GetDescendants()) do
	if v:IsA("Model") then
		local name = string.lower(v.Name)
		if string.find(name,"tree") or string.find(name,"grass") or string.find(name,"bush") then
			v:Destroy()
		end
	end
end

-- 👊 ลบเอฟเฟคต่อย / hit effect 100%
for _,v in pairs(game:GetDescendants()) do
	if v:IsA("ParticleEmitter")
	or v:IsA("Trail")
	or v:IsA("Beam")
	or v:IsA("Explosion") then
		v:Destroy()
	end
end

-- กันของใหม่ (เกม spawn เอฟเฟคเพิ่ม)
workspace.DescendantAdded:Connect(function(v)
	task.wait()
	if v:IsA("ParticleEmitter")
	or v:IsA("Trail")
	or v:IsA("Beam")
	or v:IsA("Explosion") then
		v:Destroy()
	end
	
	if v:IsA("Model") then
		local name = string.lower(v.Name)
		if string.find(name,"tree") or string.find(name,"grass") or string.find(name,"bush") then
			v:Destroy()
		end
	end
end)
