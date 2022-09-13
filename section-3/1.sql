SELECT u.sekolah as "sekolah", MAX(u.num) as "jumlah murid" 
    FROM (SELECT sekolah.name as sekolah, COUNT(users.id) as num FROM users 
        JOIN sekolah ON sekolah.id = users.sekolah_id 
        AND users.role = "murid" 
        GROUP BY users.sekolah_id) u;