-- soal 2
local namaKelompok = {"KanTen", "Assalamualaikum MJK", "Seceria"}
local namaKetua = {"Shabri Sebastian S", "Abravia Mouzahra Ramadhani", "Fadi Alyuliansyah"}
local lokasiSekolah = {"MAN 2 Kota Malang", "Aulia Pre-school", "SDN Lesanpuro 4 Malang"}

local function MokletServe(targetKelompok)
	for _, names in ipairs(namaKelompok) do
		if names == targetKelompok then
			local ketuaDariKelompok = namaKetua[table.find(namaKelompok, names)]
			local lokasiDariKelompok = lokasiSekolah[table.find(namaKelompok, names)]
			print(ketuaDariKelompok .. ", " .. lokasiDariKelompok)
		end
	end
end

local hasil = MokletServe("KanTen")
