START TRANSACTION;

-- Create schema
CREATE SCHEMA explore;

-- Create table
CREATE TABLE explore.gbif_raw (
	gbifid DECIMAL, 
	abstract BOOLEAN, 
	accessrights BOOLEAN, 
	accrualmethod BOOLEAN, 
	accrualperiodicity BOOLEAN, 
	accrualpolicy BOOLEAN, 
	alternative BOOLEAN, 
	audience BOOLEAN, 
	available BOOLEAN, 
	bibliographiccitation BOOLEAN, 
	conformsto BOOLEAN, 
	contributor BOOLEAN, 
	coverage BOOLEAN, 
	created BOOLEAN, 
	creator BOOLEAN, 
	date BOOLEAN, 
	dateaccepted BOOLEAN, 
	datecopyrighted BOOLEAN, 
	datesubmitted BOOLEAN, 
	description BOOLEAN, 
	educationlevel BOOLEAN, 
	extent BOOLEAN, 
	format BOOLEAN, 
	hasformat BOOLEAN, 
	haspart BOOLEAN, 
	hasversion BOOLEAN, 
	identifier VARCHAR, 
	instructionalmethod BOOLEAN, 
	isformatof BOOLEAN, 
	ispartof BOOLEAN, 
	isreferencedby BOOLEAN, 
	isreplacedby BOOLEAN, 
	isrequiredby BOOLEAN, 
	isversionof BOOLEAN, 
	issued BOOLEAN, 
	language BOOLEAN, 
	license VARCHAR, 
	mediator BOOLEAN, 
	medium BOOLEAN, 
	modified TIMESTAMP WITHOUT TIME ZONE, 
	provenance BOOLEAN, 
	publisher VARCHAR, 
	"references" BOOLEAN, 
	relation BOOLEAN, 
	replaces BOOLEAN, 
	requires BOOLEAN, 
	rights BOOLEAN, 
	rightsholder VARCHAR, 
	source BOOLEAN, 
	spatial BOOLEAN, 
	subject BOOLEAN, 
	tableofcontents BOOLEAN, 
	temporal BOOLEAN, 
	title BOOLEAN, 
	type BOOLEAN, 
	valid BOOLEAN, 
	institutionid VARCHAR, 
	collectionid BOOLEAN, 
	datasetid BOOLEAN, 
	institutioncode BOOLEAN, 
	collectioncode VARCHAR, 
	datasetname VARCHAR, 
	ownerinstitutioncode BOOLEAN, 
	basisofrecord VARCHAR, 
	informationwithheld BOOLEAN, 
	datageneralizations BOOLEAN, 
	dynamicproperties BOOLEAN, 
	occurrenceid VARCHAR, 
	catalognumber VARCHAR, 
	recordnumber BOOLEAN, 
	recordedby VARCHAR, 
	individualcount DECIMAL, 
	organismquantity BOOLEAN, 
	organismquantitytype BOOLEAN, 
	sex VARCHAR, 
	lifestage VARCHAR, 
	reproductivecondition BOOLEAN, 
	behavior BOOLEAN, 
	establishmentmeans BOOLEAN, 
	occurrencestatus VARCHAR, 
	preparations VARCHAR, 
	disposition BOOLEAN, 
	associatedreferences BOOLEAN, 
	associatedsequences BOOLEAN, 
	associatedtaxa BOOLEAN, 
	othercatalognumbers BOOLEAN, 
	occurrenceremarks BOOLEAN, 
	organismid BOOLEAN, 
	organismname BOOLEAN, 
	organismscope BOOLEAN, 
	associatedoccurrences BOOLEAN, 
	associatedorganisms BOOLEAN, 
	previousidentifications BOOLEAN, 
	organismremarks BOOLEAN, 
	materialsampleid BOOLEAN, 
	eventid BOOLEAN, 
	parenteventid BOOLEAN, 
	fieldnumber BOOLEAN, 
	eventdate TIMESTAMP WITHOUT TIME ZONE, 
	eventtime BOOLEAN, 
	startdayofyear BOOLEAN, 
	enddayofyear BOOLEAN, 
	year DECIMAL, 
	month DECIMAL, 
	day DECIMAL, 
	verbatimeventdate BOOLEAN, 
	habitat BOOLEAN, 
	samplingprotocol BOOLEAN, 
	samplingeffort BOOLEAN, 
	samplesizevalue BOOLEAN, 
	samplesizeunit BOOLEAN, 
	fieldnotes BOOLEAN, 
	eventremarks BOOLEAN, 
	locationid BOOLEAN, 
	highergeographyid BOOLEAN, 
	highergeography BOOLEAN, 
	continent BOOLEAN, 
	waterbody BOOLEAN, 
	islandgroup BOOLEAN, 
	island VARCHAR, 
	countrycode VARCHAR, 
	stateprovince VARCHAR, 
	county BOOLEAN, 
	municipality BOOLEAN, 
	locality VARCHAR, 
	verbatimlocality BOOLEAN, 
	verbatimelevation BOOLEAN, 
	verbatimdepth BOOLEAN, 
	minimumdistanceabovesurfaceinmeters BOOLEAN, 
	maximumdistanceabovesurfaceinmeters BOOLEAN, 
	locationaccordingto BOOLEAN, 
	locationremarks BOOLEAN, 
	decimallatitude DECIMAL, 
	decimallongitude DECIMAL, 
	coordinateuncertaintyinmeters BOOLEAN, 
	coordinateprecision BOOLEAN, 
	pointradiusspatialfit BOOLEAN, 
	verbatimcoordinatesystem BOOLEAN, 
	verbatimsrs BOOLEAN, 
	footprintwkt BOOLEAN, 
	footprintsrs BOOLEAN, 
	footprintspatialfit BOOLEAN, 
	georeferencedby BOOLEAN, 
	georeferenceddate BOOLEAN, 
	georeferenceprotocol BOOLEAN, 
	georeferencesources BOOLEAN, 
	georeferenceverificationstatus BOOLEAN, 
	georeferenceremarks BOOLEAN, 
	geologicalcontextid BOOLEAN, 
	earliesteonorlowesteonothem BOOLEAN, 
	latesteonorhighesteonothem BOOLEAN, 
	earliesteraorlowesterathem BOOLEAN, 
	latesteraorhighesterathem BOOLEAN, 
	earliestperiodorlowestsystem BOOLEAN, 
	latestperiodorhighestsystem BOOLEAN, 
	earliestepochorlowestseries BOOLEAN, 
	latestepochorhighestseries BOOLEAN, 
	earliestageorloweststage BOOLEAN, 
	latestageorhigheststage BOOLEAN, 
	lowestbiostratigraphiczone BOOLEAN, 
	highestbiostratigraphiczone BOOLEAN, 
	lithostratigraphicterms BOOLEAN, 
	"group" BOOLEAN, 
	formation BOOLEAN, 
	member BOOLEAN, 
	bed BOOLEAN, 
	identificationid BOOLEAN, 
	identificationqualifier BOOLEAN, 
	typestatus BOOLEAN, 
	identifiedby BOOLEAN, 
	dateidentified BOOLEAN, 
	identificationreferences BOOLEAN, 
	identificationverificationstatus BOOLEAN, 
	identificationremarks BOOLEAN, 
	taxonid BOOLEAN, 
	scientificnameid BOOLEAN, 
	acceptednameusageid DECIMAL, 
	parentnameusageid BOOLEAN, 
	originalnameusageid BOOLEAN, 
	nameaccordingtoid BOOLEAN, 
	namepublishedinid BOOLEAN, 
	taxonconceptid BOOLEAN, 
	scientificname VARCHAR, 
	acceptednameusage BOOLEAN, 
	parentnameusage BOOLEAN, 
	originalnameusage BOOLEAN, 
	nameaccordingto BOOLEAN, 
	namepublishedin BOOLEAN, 
	namepublishedinyear BOOLEAN, 
	higherclassification VARCHAR, 
	kingdom VARCHAR, 
	phylum VARCHAR, 
	class VARCHAR, 
	"order" VARCHAR, 
	family VARCHAR, 
	genus VARCHAR, 
	subgenus BOOLEAN, 
	specificepithet VARCHAR, 
	infraspecificepithet VARCHAR, 
	taxonrank VARCHAR, 
	verbatimtaxonrank BOOLEAN, 
	vernacularname BOOLEAN, 
	nomenclaturalcode VARCHAR, 
	taxonomicstatus VARCHAR, 
	nomenclaturalstatus BOOLEAN, 
	taxonremarks BOOLEAN, 
	datasetkey VARCHAR, 
	publishingcountry VARCHAR, 
	lastinterpreted TIMESTAMP WITHOUT TIME ZONE, 
	elevation BOOLEAN, 
	elevationaccuracy BOOLEAN, 
	depth BOOLEAN, 
	depthaccuracy BOOLEAN, 
	distanceabovesurface BOOLEAN, 
	distanceabovesurfaceaccuracy BOOLEAN, 
	issue VARCHAR, 
	mediatype BOOLEAN, 
	hascoordinate BOOLEAN, 
	hasgeospatialissues BOOLEAN, 
	taxonkey DECIMAL, 
	acceptedtaxonkey DECIMAL, 
	kingdomkey BOOLEAN, 
	phylumkey DECIMAL, 
	classkey DECIMAL, 
	orderkey DECIMAL, 
	familykey DECIMAL, 
	genuskey DECIMAL, 
	subgenuskey BOOLEAN, 
	specieskey DECIMAL, 
	species VARCHAR, 
	genericname VARCHAR, 
	acceptedscientificname VARCHAR, 
	verbatimscientificname VARCHAR, 
	typifiedname BOOLEAN, 
	protocol VARCHAR, 
	lastparsed TIMESTAMP WITHOUT TIME ZONE, 
	lastcrawled TIMESTAMP WITHOUT TIME ZONE, 
	repatriated BOOLEAN, 
	relativeorganismquantity BOOLEAN, 
	recordedbyid BOOLEAN, 
	identifiedbyid BOOLEAN, 
	level0gid VARCHAR, 
	level0name VARCHAR, 
	level1gid VARCHAR, 
	level1name VARCHAR, 
	level2gid VARCHAR, 
	level2name VARCHAR, 
	level3gid VARCHAR, 
	level3name VARCHAR
);

-- Set datatype to text
ALTER TABLE explore.gbif_raw ALTER COLUMN "gbifid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "abstract" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "accessrights" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "accrualmethod" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "accrualperiodicity" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "accrualpolicy" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "alternative" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "audience" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "available" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "bibliographiccitation" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "conformsto" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "contributor" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "coverage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "created" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "creator" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "date" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "dateaccepted" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datecopyrighted" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datesubmitted" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "description" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "educationlevel" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "extent" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "format" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "hasformat" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "haspart" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "hasversion" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identifier" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "instructionalmethod" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "isformatof" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "ispartof" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "isreferencedby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "isreplacedby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "isrequiredby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "isversionof" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "issued" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "language" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "license" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "mediator" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "medium" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "modified" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "provenance" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "publisher" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "references" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "relation" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "replaces" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "requires" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "rights" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "rightsholder" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "source" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "spatial" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "subject" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "tableofcontents" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "temporal" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "title" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "type" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "valid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "institutionid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "collectionid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datasetid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "institutioncode" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "collectioncode" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datasetname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "ownerinstitutioncode" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "basisofrecord" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "informationwithheld" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datageneralizations" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "dynamicproperties" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "occurrenceid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "catalognumber" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "recordnumber" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "recordedby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "individualcount" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismquantity" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismquantitytype" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "sex" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lifestage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "reproductivecondition" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "behavior" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "establishmentmeans" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "occurrencestatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "preparations" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "disposition" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "associatedreferences" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "associatedsequences" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "associatedtaxa" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "othercatalognumbers" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "occurrenceremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismscope" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "associatedoccurrences" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "associatedorganisms" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "previousidentifications" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "organismremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "materialsampleid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "eventid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "parenteventid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "fieldnumber" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "eventdate" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "eventtime" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "startdayofyear" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "enddayofyear" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "year" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "month" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "day" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimeventdate" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "habitat" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "samplingprotocol" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "samplingeffort" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "samplesizevalue" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "samplesizeunit" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "fieldnotes" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "eventremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "locationid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "highergeographyid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "highergeography" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "continent" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "waterbody" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "islandgroup" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "island" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "countrycode" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "stateprovince" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "county" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "municipality" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "locality" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimlocality" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimelevation" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimdepth" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "minimumdistanceabovesurfaceinmeters" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "maximumdistanceabovesurfaceinmeters" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "locationaccordingto" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "locationremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "decimallatitude" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "decimallongitude" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "coordinateuncertaintyinmeters" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "coordinateprecision" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "pointradiusspatialfit" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimcoordinatesystem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimsrs" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "footprintwkt" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "footprintsrs" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "footprintspatialfit" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferencedby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferenceddate" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferenceprotocol" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferencesources" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferenceverificationstatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "georeferenceremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "geologicalcontextid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "earliesteonorlowesteonothem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "latesteonorhighesteonothem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "earliesteraorlowesterathem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "latesteraorhighesterathem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "earliestperiodorlowestsystem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "latestperiodorhighestsystem" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "earliestepochorlowestseries" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "latestepochorhighestseries" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "earliestageorloweststage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "latestageorhigheststage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lowestbiostratigraphiczone" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "highestbiostratigraphiczone" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lithostratigraphicterms" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "group" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "formation" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "member" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "bed" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identificationid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identificationqualifier" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "typestatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identifiedby" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "dateidentified" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identificationreferences" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identificationverificationstatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identificationremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "scientificnameid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "acceptednameusageid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "parentnameusageid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "originalnameusageid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "nameaccordingtoid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "namepublishedinid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonconceptid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "scientificname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "acceptednameusage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "parentnameusage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "originalnameusage" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "nameaccordingto" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "namepublishedin" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "namepublishedinyear" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "higherclassification" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "kingdom" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "phylum" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "class" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "order" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "family" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "genus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "subgenus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "specificepithet" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "infraspecificepithet" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonrank" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimtaxonrank" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "vernacularname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "nomenclaturalcode" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonomicstatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "nomenclaturalstatus" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonremarks" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "datasetkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "publishingcountry" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lastinterpreted" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "elevation" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "elevationaccuracy" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "depth" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "depthaccuracy" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "distanceabovesurface" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "distanceabovesurfaceaccuracy" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "issue" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "mediatype" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "hascoordinate" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "hasgeospatialissues" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "taxonkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "acceptedtaxonkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "kingdomkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "phylumkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "classkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "orderkey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "familykey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "genuskey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "subgenuskey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "specieskey" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "species" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "genericname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "acceptedscientificname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "verbatimscientificname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "typifiedname" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "protocol" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lastparsed" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "lastcrawled" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "repatriated" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "relativeorganismquantity" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "recordedbyid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "identifiedbyid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level0gid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level0name" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level1gid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level1name" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level2gid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level2name" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level3gid" TYPE text;
ALTER TABLE explore.gbif_raw ALTER COLUMN "level3name" TYPE text;

-- Set to unlogged
ALTER TABLE explore.gbif_raw SET UNLOGGED;

-- Load data into table
COPY explore.gbif_raw FROM '/tmp/gbif_raw.tsv' DELIMITER E'\t';

-- Empty string to null
UPDATE explore.gbif_raw SET "gbifid" = null WHERE "gbifid" = '';
UPDATE explore.gbif_raw SET "occurrenceid" = null WHERE "occurrenceid" = '';
UPDATE explore.gbif_raw SET "catalognumber" = null WHERE "catalognumber" = '';
UPDATE explore.gbif_raw SET "recordedby" = null WHERE "recordedby" = '';
UPDATE explore.gbif_raw SET "sex" = null WHERE "sex" = '';
UPDATE explore.gbif_raw SET "lifestage" = null WHERE "lifestage" = '';
UPDATE explore.gbif_raw SET "preparations" = null WHERE "preparations" = '';
UPDATE explore.gbif_raw SET "eventdate" = null WHERE "eventdate" = '';
UPDATE explore.gbif_raw SET "year" = null WHERE "year" = '';
UPDATE explore.gbif_raw SET "month" = null WHERE "month" = '';
UPDATE explore.gbif_raw SET "day" = null WHERE "day" = '';
UPDATE explore.gbif_raw SET "countrycode" = null WHERE "countrycode" = '';
UPDATE explore.gbif_raw SET "stateprovince" = null WHERE "stateprovince" = '';
UPDATE explore.gbif_raw SET "locality" = null WHERE "locality" = '';
UPDATE explore.gbif_raw SET "decimallatitude" = null WHERE "decimallatitude" = '';
UPDATE explore.gbif_raw SET "decimallongitude" = null WHERE "decimallongitude" = '';
UPDATE explore.gbif_raw SET "scientificname" = null WHERE "scientificname" = '';
UPDATE explore.gbif_raw SET "higherclassification" = null WHERE "higherclassification" = '';
UPDATE explore.gbif_raw SET "kingdom" = null WHERE "kingdom" = '';
UPDATE explore.gbif_raw SET "phylum" = null WHERE "phylum" = '';
UPDATE explore.gbif_raw SET "class" = null WHERE "class" = '';
UPDATE explore.gbif_raw SET "order" = null WHERE "order" = '';
UPDATE explore.gbif_raw SET "family" = null WHERE "family" = '';
UPDATE explore.gbif_raw SET "genus" = null WHERE "genus" = '';
UPDATE explore.gbif_raw SET "specificepithet" = null WHERE "specificepithet" = '';
UPDATE explore.gbif_raw SET "species" = null WHERE "species" = '';
UPDATE explore.gbif_raw SET "genericname" = null WHERE "genericname" = '';

-- Postgis magic for Grafana Track Map panel
CREATE EXTENSION postgis;

-- Create table gbif
CREATE TABLE explore.gbif (
gbifid bigint PRIMARY KEY,
eventdate timestamptz,
year int,
month int,
day int,
catalognumber text,
occurrenceid text,
recordedby text,
sex text,
lifestage text,
preparations text,
locality text,
stateprovince text,
countrycode text,
higherclassification text,
kingdom text,
phylum text,
class text,
"order" text,
family text,
genus text,
specificepithet text,
species text,
genericname text,
scientificname text,
decimallatitude float,
decimallongitude float,
geom geometry(POINT,4326),
location text,
tsv tsvector
);

-- Create trigger to generate tsvectors on insert
CREATE TRIGGER create_tsv BEFORE INSERT OR UPDATE
ON explore.gbif FOR EACH ROW EXECUTE FUNCTION
tsvector_update_trigger(tsv, 'pg_catalog.simple', 
catalognumber, 
occurrenceid, 
recordedby, 
sex, 
lifestage, 
preparations, 
locality, 
stateprovince, 
countrycode, 
higherclassification, 
kingdom, 
phylum, 
class, 
"order", 
family, 
genus, 
specificepithet,
species,
genericname,
scientificname
);

-- Create function and trigger to populate geom column
CREATE OR REPLACE function explore.update_geom() RETURNS TRIGGER AS 
$$
  BEGIN 
    NEW.geom := ST_SetSRID(ST_Makepoint(NEW.decimallongitude,NEW.decimallatitude),4326);
    RETURN NEW;
  END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER update_geom BEFORE INSERT OR UPDATE ON explore.gbif FOR EACH ROW EXECUTE PROCEDURE explore.update_geom();

-- Create function and trigger to populate location column
CREATE OR REPLACE function explore.update_location() RETURNS TRIGGER AS 
$$
  BEGIN
    IF NEW.decimallatitude IS NOT NULL AND NEW.decimallongitude IS NOT NULL THEN
      NEW.location := concat_ws(',', NEW.decimallatitude, NEW.decimallongitude);
    END IF;
    RETURN NEW;
  END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER update_location BEFORE INSERT OR UPDATE ON explore.gbif FOR EACH ROW EXECUTE PROCEDURE explore.update_location();

-- Insert data
INSERT INTO explore.gbif (SELECT
gbifid::bigint, 
eventdate::timestamptz,
year::int,
month::int,
day::int,
catalognumber, 
occurrenceid, 
recordedby, 
sex, 
lifestage, 
preparations, 
locality, 
stateprovince, 
countrycode, 
higherclassification, 
kingdom, 
phylum, 
class, 
"order", 
family, 
genus, 
specificepithet,
species,
genericname,
scientificname,
decimallatitude::float,
decimallongitude::float
FROM explore.gbif_raw
);

COMMIT;
