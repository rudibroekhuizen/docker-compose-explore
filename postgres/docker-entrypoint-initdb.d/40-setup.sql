START TRANSACTION;

CREATE EXTENSION IF NOT EXISTS hll;
CREATE EXTENSION IF NOT EXISTS topn;

-- Create enriched table
CREATE TABLE explore.gbif_enriched AS 
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
FROM c;

-- Create aggregation table
CREATE TABLE explore.gbif_aggregated(
id INT GENERATED ALWAYS AS IDENTITY,
time date,
concave geometry,
hll_gbifid hll,
hll_scientificname hll,
hll_recordedby hll,
hll_locality hll,
hll_cluster_id hll,
topn_scientificname jsonb,
topn_recordedby jsonb,
topn_locality jsonb,
topn_cluster_id jsonb
);

-- Insert data into aggregation table
INSERT INTO explore.gbif_aggregated(time, concave,hll_gbifid,hll_scientificname,hll_recordedby,hll_locality,hll_cluster_id,topn_scientificname,topn_recordedby,topn_locality,topn_cluster_id)
SELECT
time,
concave,
hll_add_agg(hll_hash_bigint(gbifid)),
hll_add_agg(hll_hash_text(scientificname)),
hll_add_agg(hll_hash_text(recordedby)),
hll_add_agg(hll_hash_text(locality)),
hll_add_agg(hll_hash_integer(cluster_id)),
topn_add_agg(scientificname),
topn_add_agg(recordedby),
topn_add_agg(locality),
topn_add_agg(cluster_id::text)
FROM explore.gbif_enriched
GROUP BY 1,2
ORDER BY 1,2;

-- FTS on topn scienticname values
-- ALTER TABLE explore.gbif_aggregated ADD COLUMN tsv_topn_scientificname tsvector;

-- FTS on topn scienticname values
-- UPDATE explore.gbif_aggregated
-- SET tsv_topn_scientificname = d
-- FROM (
-- WITH a AS (
-- SELECT id, jsonb_object_keys(topn_scientificname) AS keys
-- FROM explore.gbif_aggregated), b AS (
-- SELECT id, to_jsonb(ARRAY_AGG(keys)) AS c FROM a GROUP BY 1
-- )
-- SELECT id, jsonb_to_tsvector('simple', c, '["all"]') AS d FROM b
-- ) foo
-- WHERE foo.id = gbif_aggregated.id;

-- Create indexes on table explore.gbif_enriched
CREATE INDEX ON explore.gbif_enriched USING GIST (geom);
CREATE INDEX ON explore.gbif_enriched USING BTREE (time);
CREATE INDEX ON explore.gbif_enriched USING GIST (tsv);  

-- Create indexes on table explore.gbif_aggregated
CREATE INDEX ON explore.gbif_aggregated USING GIST (concave);
CREATE INDEX ON explore.gbif_aggregated USING BRIN (time);
-- CREATE INDEX ON explore.gbif_aggregated USING GIST (tsv_topn_scientificname);  

COMMIT;
