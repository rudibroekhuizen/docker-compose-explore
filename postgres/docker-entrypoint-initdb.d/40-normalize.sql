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

-- SELECT * FROM explore.gbif JOIN explore.recordedby ON gbif.recordedby_id = recordedby.id WHERE recordedby.id IN (2850,2851);
-- SELECT * FROM explore.gbif JOIN explore.recordedby ON gbif.recordedby_id = recordedby.id WHERE recordedby.name IN ('Levaillant F.','Bernstein H.A.');

COMMIT;
