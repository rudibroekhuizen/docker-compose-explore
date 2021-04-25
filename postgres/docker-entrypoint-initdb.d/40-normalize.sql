START TRANSACTION;

CREATE TABLE explore.recordedby (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name text UNIQUE
);

INSERT INTO explore.recordedby (name) SELECT DISTINCT recordedby FROM explore.gbif;

ALTER TABLE explore.gbif ADD COLUMN recordedby_id bigint;

UPDATE explore.gbif set recordedby_id = recordedby.id FROM explore.recordedby WHERE gbif.recordedby = recordedby.name;

ALTER TABLE explore.gbif ADD CONSTRAINT "recorded_id_fkey" FOREIGN KEY (recordedby_id) REFERENCES explore.recordedby(id);

CREATE INDEX ON explore.recordedby (name);

CREATE INDEX ON explore.gbif (recordedby_id);

CREATE EXTENSION pg_trgm;

CREATE INDEX ON explore.recordedby USING gin(name gin_trgm_ops);

-- SELECT * FROM explore.gbif a LEFT JOIN explore.recordedby b ON a.recordedby_id = b.id WHERE b.id IN (2850,2851);
-- SELECT * FROM explore.gbif a LEFT JOIN explore.recordedby b ON a.recordedby_id = b.id WHERE b.name IN ('Levaillant F.','Bernstein H.A.');

COMMIT;
