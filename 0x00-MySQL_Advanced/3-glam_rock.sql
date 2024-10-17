-- sql script to old school band

SELECT band_name,
    CASE 
        WHEN split IS NOT NULL THEN split - formed   -- If split year is available
        ELSE 2022 - formed                             -- If no split year (still active)
    END AS lifespan
FROM metal_bands
WHERE style
    LIKE 'Glam rock'
ORDER BY lifespan
DESC;