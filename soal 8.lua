--soal 8
local function hitung_volatilitas(selisih)
	local n = #selisih
	local hasil = selisih[1] * n
	
	local function quickSort()
		local pivot = selisih[1]
		local left = {}
		local right = {}
		for i = 2, n do
			if selisih[i] < pivot then
				table.insert(left, selisih[i])
			else
				table.insert(right, selisih[i])
			end
		end
		return quickSort(left) + pivot + quickSort(right)
	end
	
	return hasil
end

local result = hitung_volatilitas()
print(result({-6, -2, 0, 3, 5}))
print(result({-8, -3, -1, 2, 5, 9}))
print(result({-10, -7, -4}))
print(result({1, 3, 5, 8}))
