START TRANSACTION;

CREATE UNLOGGED TABLE explore.multimedia_raw (
        gbifid DECIMAL, 
        type VARCHAR, 
        format VARCHAR, 
        identifier VARCHAR, 
        "references" BOOLEAN, 
        title BOOLEAN, 
        description VARCHAR, 
        source BOOLEAN, 
        audience BOOLEAN, 
        created BOOLEAN, 
        creator BOOLEAN, 
        contributor BOOLEAN, 
        publisher BOOLEAN, 
        license VARCHAR, 
        rightsholder VARCHAR
);

-- Set datatype to text
ALTER TABLE explore.multimedia_raw ALTER COLUMN "gbifid" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "type" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "format" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "identifier" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "references" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "title" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "description" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "source" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "audience" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "created" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "creator" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "contributor" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "publisher" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "license" TYPE text;
ALTER TABLE explore.multimedia_raw ALTER COLUMN "rightsholder" TYPE text;

-- Load data into table
COPY explore.multimedia_raw FROM '/tmp/multimedia_raw.tsv' DELIMITER E'\t';

CREATE TABLE explore.multimedia (
 gbifid bigint,
 type text,
 format text,
 identifier text,
 description text
);

CREATE INDEX ON explore.multimedia_raw USING BTREE (gbifid);

INSERT INTO explore.multimedia (SELECT
 gbifid::bigint, 
 type,
 format,
 identifier,
 description
 FROM explore.multimedia_raw
);

COMMIT;

-- SELECT b.gbifid, b.identifier FROM explore.gbif a LEFT JOIN explore.multimedia b USING (gbifid) WHERE a.gbifid in (2433859273);
