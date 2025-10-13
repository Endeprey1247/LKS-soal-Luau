--soal 4
local nama = {"Alya", "Bayu", "Arfan", "budi", "Cici", "1Naya"}

function group_by_initial(names)
	local groups = {}
	for _, name in ipairs(names) do
		local initial = name:sub(1,1):upper()
		groups[initial] = groups[initial] or {}
		table.insert(groups[initial], name)
	end
	return groups
end

local result = group_by_initial(nama)
print(result)
