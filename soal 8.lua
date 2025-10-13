local mikir = {-8, -3, -1, 2, 5, 9}

--[[function reverseSort(a, b)
	return a > b
end]]

local function hitung_volatilitas(array)
	local hasil = {}
	local awal = 1
	local akhir = #array

	for i = 1, #array do
		if array[awal] ^ 2 < array[akhir] ^ 2 then
			table.insert(hasil, array[akhir] ^ 2)
			akhir = akhir - 1
		else
			table.insert(hasil, array[awal] ^ 2)
			awal = awal + 1
		end
	end

	return hasil
end

local result = hitung_volatilitas(mikir)
print(result)
