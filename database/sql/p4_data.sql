
USE praktikum_web_2401020084;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Sistem Komputer'),
    ('Teknologi Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020101', 'Rina Amelia', 'rina.amelia@example.com', 20, 1),
    ('2401020102', 'Dimas Saputra', 'dimas.saputra@example.com', 21, 1),
    ('2401020103', 'Nadia Putri', 'nadia.putri@example.com', 19, 2),

UPDATE mahasiswa
SET email = 'rina.amelia@kampus.example'
WHERE nim = '2401020101';

DELETE FROM mahasiswa
WHERE nim = '2401020199';

SELECT
    m.nim,
    m.nama,
    m.email,
    m.usia,
    p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
