-- soal 1
local function BulatKeTabelPalingDekat(UrunanKelas, TargetUrunan)
	local PalingDekat, PalingBesar = nil, math.huge
	for _, Urunan in ipairs(UrunanKelas) do
		local Beda = math.abs(TargetUrunan - Urunan)
		if Beda < PalingBesar then
			PalingDekat = Urunan
			PalingBesar = Beda
		end
	end
	return PalingDekat
end

local Hasil = BulatKeTabelPalingDekat({50000, 103000, 110000, 97000, 101000, 99999}, 100000)
print(Hasil)
