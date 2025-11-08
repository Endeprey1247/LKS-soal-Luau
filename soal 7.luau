--soal 7
local nilai_tka = {400, 500, 550, 600, 650, 700, 750, 800}

local function binarySearch(target)
	local left = 1
	local right = #nilai_tka
	if left > target then
		local potongArray = {table.unpack(nilai_tka, 5, #nilai_tka)}
		for key, value in pairs(potongArray) do
			if value == target then
				return key
			end
		end
	elseif right < target then
		local potongArray = {table.unpack(nilai_tka, 1, 4)}
		for key, value in pairs(potongArray) do
			if value == target then
				return key
			end
		end
	else
		print("Nothing ever happened.")
	end
end

local result = binarySearch(720)
print(result)
