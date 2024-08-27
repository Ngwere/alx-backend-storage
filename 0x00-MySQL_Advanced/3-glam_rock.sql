-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- Uses '2020' as the default split year when the split column is NULL.
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
	FROM metal_bands
	WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
	ORDER BY lifespan DESC;
