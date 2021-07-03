START TRANSACTION;

-- Create enriched table
CREATE MATERIALIZED VIEW explore.gbif_enriched AS 
WITH a AS (
SELECT * FROM explore.gbif 
), b AS (	
SELECT *,
make_date((EXTRACT (YEAR FROM eventdate))::int, (EXTRACT (MONTH FROM eventdate))::int, '1') as time,
ST_ClusterKMeans(geom, 500) OVER() AS cluster_id
FROM a
), c AS (
SELECT *, 
ST_UNION(geom) OVER (PARTITION BY cluster_id ORDER BY cluster_id) AS stunion 
FROM b
)
SELECT *, 
ST_SetSRID(ST_Centroid(stunion), 4326) AS centro_id,
ST_Concavehull(ST_RemoveRepeatedPoints(stunion,1),1) AS concave
FROM c

COMMIT;
