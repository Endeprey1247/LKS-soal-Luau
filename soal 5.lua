--soal 5
local voucher = {"A12", "B07", "C19", "A12"} 
local voucher2 = {"X01", "Y02", "Z03", "T09"}
local voucher3 = {"M01", "M02", "M03", "M01", "M02", "M02", "M04"}

function duplikasiVoucher(KodeVoucher)
	local kelompok = {}
	for i = 1, #KodeVoucher do
		local jumlah = 0
		for j = 1, #KodeVoucher do
			if KodeVoucher[i] == KodeVoucher[j] then
				jumlah = jumlah + 1
				if jumlah > 1 then
					print("Kebanyakan voucher di " .. KodeVoucher[i])
					break
				else
					print("kode voucher unik")
				end
			end
		end
		kelompok[KodeVoucher[i]] = jumlah
	end
	return kelompok
end

print(duplikasiVoucher(voucher))
print(duplikasiVoucher(voucher2))
print(duplikasiVoucher(voucher3))
