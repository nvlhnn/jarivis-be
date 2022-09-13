SELECT sekolah.name, mata_pelajaran.name as "mapel", count(pendidik.id) as "jumlah pendidik" 
    FROM jadwal_pendidik 
        JOIN sekolah ON sekolah.id = jadwal_pendidik.sekolah_id 
        JOIN pendidik ON pendidik.id = jadwal_pendidik.pendidik_id 
        JOIN mata_pelajaran on mata_pelajaran.id = jadwal_pendidik.mata_pelajaran_id  
    GROUP BY  jadwal_pendidik.sekolah_id, jadwal_pendidik.mata_pelajaran_id;