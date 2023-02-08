
-- table 1 as kehadiranTable
-- tanggal, NIM
-- 15 Juni 2020, A001
-- 18 Juni 2020, A003
-- 16 Juni 2020, A001
-- 15 Juni 2020, A002
-- 17 Juni 2020, A001
-- 17 Juni 2020, A002
-- 15 Juni 2020, A003
-- 16 Juni 2020, A002
-- 17 Juni 2020, A004
-- 16 Juni 2020, A003

-- table 2 as namaTable
-- NIM, Nama
-- A001, Mozarella
-- A002, Emmental
-- A003, Gouda
-- A004, Chevre

-- Buatlah query untuk menampilkan siapa saja yang hadir pada tanggal 15 dan 17 Juni 2020
-- Jawaban A
SELECT * FROM kehadiranTable INNER JOIN namaTable ON kehadiranTable.NIM = namaTable.NIM
WHERE tanggal = '15 Juni 2020' OR tanggal = '17 Juni 2020' ORDER BY kehadiranTable.tanggal

-- Buatlah query untuk menampilkan jumlah kehadiran masing-masing orang dalam periode tsb.
-- Jawaban B
SELECT
    namaTable.NIM, namaTable.Nama, COUNT(namaTable.Nama) AS jumlahKehadiran
FROM kehadiranTable INNER JOIN namaTable ON kehadiranTable.NIM = namaTable.NIM
GROUP BY namaTable.Nama