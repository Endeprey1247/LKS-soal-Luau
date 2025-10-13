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
				end
			end
		end
		kelompok[KodeVoucher[i]] = jumlah
	end
	return kelompok
end

local hasil = duplikasiVoucher(voucher)
print(hasil)

function duplicatedVoucher(voucherCode)
	local kelompok = {}
	for i = 1, #voucherCode do
		local jumlah = 0
		for j = 1, #voucherCode do
			if voucherCode[i] == voucherCode[j] then
				jumlah = jumlah + 1
				if jumlah > 1 then
					print("there's too much voucher in " .. voucherCode[i])
					break
				else
					print("Semua kode voucher unik")
					break
				end
			end
		end
		kelompok[voucherCode[i]] = jumlah
	end
	return kelompok
end

local result = duplicatedVoucher(voucher2)
print(result)

function MultiDuplicatedVoucher(DuppedVoucher)
	local kelompok = {}
	for i = 1, #DuppedVoucher do
		local jumlah = 0
		for j = 1, #DuppedVoucher do
			if DuppedVoucher[i] == DuppedVoucher[j] then
				jumlah = jumlah + 1
			end
		end
		kelompok[DuppedVoucher[i]] = jumlah
	end
	return kelompok
end

local result2 = MultiDuplicatedVoucher(voucher3)
print(result2)
