--
-- PostgreSQL DDL generated from IECManifest.xsd using xsd2pgschema
--  xsd2pgschema - Database replication tool based on XML Schema
--  https://sourceforge.net/projects/xsd2pgschema/
--
-- Schema modeling options:
--  explicit named schema: false
--  relational extension: true
--  inline simple content: false
--  realize simple bridge: false
--  wild card extension: true
--  case sensitive name: true
--  no name collision: true
--  append document key: true
--  append serial key: false
--  append xpath key: false
--  retain constraint: true
--  retrieve field annotation: false
--  map integer numbers to: signed int 32 bits
--  map decimal numbers to: big decimal
--  map xsd date type to: sql date type
--  assumed hash algorithm: SHA-1
--  hash key type: unsigned long 64 bits
--
-- Statistics of schema:
--  Generated 17 tables (83 fields), 7 views (21 fields), 0 attr groups, 0 model groups in total
--  Found 9 tables (34 fields), 0 attr groups, 0 model groups in XML Schema: IECCopyright.xsd
--   Namespaces:
--    http://www.w3.org/2001/XMLSchema (xs), http://www.iec.ch/CC/2017/IECManifest (cc)
--   Schema locations:
--    IECManifest.xsd, IECCopyright.xsd
--   Table types:
--    1 root, 0 root children, 1 extern root, 13 admin roots, 9 admin children
--   System keys:
--    24 primary keys (16 unique constraints), 15 foreign keys, 26 nested keys (7 as attribute, 0 as attribute group)
--   User keys:
--    24 document keys, 0 serial keys, 0 xpath keys
--   Contents:
--    10 attributes (0 in-place document keys), 0 elements (0 in-place document keys), 5 simple contents (0 in-place document keys, 3 as attribute, 0 as conditional attribute)
--   Wild cards:
--    0 any elements, 0 any attributes
--   Constraints:
--    0 unique constraints from xs:key, 0 unique constraints from xs:unique, 0 foreign key constraints from xs:keyref
--

--
-- COPYRIGHT (c) IEC, 2017. This version of this XSD is part of IEC copyright definition. IEC code components will be delivered as a package including a manifest file. This Schema will describe what a package will contains Draft 2017-01-18 (version 0.2).
--

DROP TABLE IF EXISTS "tCopyrightNotice" CASCADE;
DROP TABLE IF EXISTS "tLicenseKind" CASCADE;
DROP TABLE IF EXISTS "tCopyrighted" CASCADE;
DROP TABLE IF EXISTS "tNotice" CASCADE;
DROP TABLE IF EXISTS "tLicense" CASCADE;
DROP TABLE IF EXISTS "tContentKind" CASCADE;
DROP TABLE IF EXISTS "tCategoryKind" CASCADE;
DROP TABLE IF EXISTS "tNamedElement" CASCADE;
DROP TABLE IF EXISTS "tCodeComponent" CASCADE;
DROP TABLE IF EXISTS "tManifest" CASCADE;
DROP TABLE IF EXISTS "tFile" CASCADE;
DROP TABLE IF EXISTS "tPublication" CASCADE;
DROP TABLE IF EXISTS "tHistoryFile" CASCADE;
DROP TABLE IF EXISTS "IECManifest" CASCADE;
DROP TABLE IF EXISTS "Publication" CASCADE;
DROP TABLE IF EXISTS "File" CASCADE;
DROP TABLE IF EXISTS "HistoryFile" CASCADE;

--
-- The manifest of a package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: root, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "IECManifest" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"IECManifest_id" BIGINT CHECK ( "IECManifest_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tManifest" ( "tManifest_id" )
	"tManifest_id" BIGINT CHECK ( "tManifest_id" >= 0 )
);

--
-- (quoted from tCodeComponent)
-- Listing of the files composing the code component of the package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Publication" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Publication_id" BIGINT CHECK ( "Publication_id" >= 0 ) ,
-- NESTED KEY : "tPublication" ( "tPublication_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"tPublication_id" BIGINT CHECK ( "tPublication_id" >= 0 )
);

--
-- (quoted from tCodeComponent)
-- Listing of the files composing the code component of the package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "File" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"File_id" BIGINT CHECK ( "File_id" >= 0 ) ,
-- NESTED KEY : "tFile" ( "tFile_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"tFile_id" BIGINT CHECK ( "tFile_id" >= 0 )
);

--
-- (quoted from tCodeComponent)
-- Listing of the files composing the code component of the package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "HistoryFile" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"HistoryFile_id" BIGINT CHECK ( "HistoryFile_id" >= 0 ) ,
-- NESTED KEY : "tHistoryFile" ( "tHistoryFile_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"tHistoryFile_id" BIGINT CHECK ( "tHistoryFile_id" >= 0 )
);

--
-- The manifest of a package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tManifest" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tManifest_id" BIGINT CHECK ( "tManifest_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "IECManifest" ( "IECManifest_id" )
	"IECManifest_id" BIGINT CHECK ( "IECManifest_id" >= 0 ) CONSTRAINT FK_tManifest_IECManifest REFERENCES "IECManifest" ( "IECManifest_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tCopyrighted" ( "tCopyrighted_id" ), PARENT NODE : IECManifest
	"tCopyrighted_id" BIGINT CHECK ( "tCopyrighted_id" >= 0 ) ,
-- NESTED KEY : "CodeComponent" ( "CodeComponent_id", DELEGATED TO "tCodeComponent_id" ), PARENT NODE : IECManifest
	"CodeComponent_id" BIGINT CHECK ( "CodeComponent_id" >= 0 )
);

--
-- description of one file of the code component package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tFile" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tFile_id" BIGINT CHECK ( "tFile_id" >= 0 ) ,
-- NESTED KEY : "tNamedElement" ( "tNamedElement_id" ), PARENT NODE : File, ANCESTOR NODE : CodeComponent
	"tNamedElement_id" BIGINT CHECK ( "tNamedElement_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : content ( content_id, DELEGATED TO "tContentKind_id" ), PARENT NODE : File
	content_id BIGINT CHECK ( content_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : category ( category_id, DELEGATED TO "tCategoryKind_id" ), PARENT NODE : File
	category_id BIGINT CHECK ( category_id >= 0 ) ,
-- FOREIGN KEY : "File" ( "File_id" )
	"File_id" BIGINT CHECK ( "File_id" >= 0 )
);

--
-- description of the publication where the code component apply
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tPublication" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tPublication_id" BIGINT CHECK ( "tPublication_id" >= 0 ) ,
-- NESTED KEY : "tNamedElement" ( "tNamedElement_id" ), PARENT NODE : Publication, ANCESTOR NODE : CodeComponent
	"tNamedElement_id" BIGINT CHECK ( "tNamedElement_id" >= 0 ) ,
-- FOREIGN KEY : "Publication" ( "Publication_id" )
	"Publication_id" BIGINT CHECK ( "Publication_id" >= 0 )
);

--
-- description of one history file of the code component
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tHistoryFile" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tHistoryFile_id" BIGINT CHECK ( "tHistoryFile_id" >= 0 ) ,
-- NESTED KEY : "tNamedElement" ( "tNamedElement_id" ), PARENT NODE : HistoryFile, ANCESTOR NODE : CodeComponent
	"tNamedElement_id" BIGINT CHECK ( "tNamedElement_id" >= 0 ) ,
-- ATTRIBUTE
-- map XSD date (xs:date) to SQL DATE
	"startingDate" DATE NOT NULL ,
-- ATTRIBUTE
-- map XSD date (xs:date) to SQL DATE
	"endingDate" DATE NOT NULL ,
-- ATTRIBUTE
	"startingVersion" TEXT NOT NULL ,
-- ATTRIBUTE
	"endingVersion" TEXT NOT NULL ,
-- FOREIGN KEY : "HistoryFile" ( "HistoryFile_id" )
	"HistoryFile_id" BIGINT CHECK ( "HistoryFile_id" >= 0 )
);

--
-- The copyright notice attached to the XML
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tCopyrightNotice" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCopyrightNotice_id" BIGINT CHECK ( "tCopyrightNotice_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Copyright" ( "Copyright_id" )
	"Copyright_id" BIGINT CHECK ( "Copyright_id" >= 0 ) ,
-- NESTED KEY : "Notice" ( "Notice_id", DELEGATED TO "tNotice_id" ), PARENT NODE : Copyright
	"Notice_id" BIGINT CHECK ( "Notice_id" >= 0 ) ,
-- NESTED KEY : "License" ( "License_id", DELEGATED TO "tLicense_id" ), PARENT NODE : Copyright
	"License_id" BIGINT CHECK ( "License_id" >= 0 )
);

--
-- Kind of license
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tLicenseKind_content CASCADE;
CREATE TYPE ENUM_tLicenseKind_content AS ENUM ( 'Standard', 'Private', 'None' );
CREATE TABLE "tLicenseKind" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLicenseKind_id" BIGINT CHECK ( "tLicenseKind_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: kind
	content ENUM_tLicenseKind_content ,
-- FOREIGN KEY : kind ( kind_id )
	kind_id BIGINT CHECK ( kind_id >= 0 )
);

--
-- Add description for a copyrighted XML.
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECCopyright.xsd IECManifest.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tCopyrighted" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCopyrighted_id" BIGINT CHECK ( "tCopyrighted_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "Copyright" ( "Copyright_id", DELEGATED TO "tCopyrightNotice_id" ), PARENT NODE : IECManifest
	"Copyright_id" BIGINT CHECK ( "Copyright_id" >= 0 ) ,
-- FOREIGN KEY : "tManifest" ( "tManifest_id" )
	"tManifest_id" BIGINT CHECK ( "tManifest_id" >= 0 ) CONSTRAINT FK_tCopyrighted_tManifest REFERENCES "tManifest" ( "tManifest_id" ) ON DELETE CASCADE
);

--
-- The textual copyright notice.
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tNotice" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tNotice_id" BIGINT CHECK ( "tNotice_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Notice" ( "Notice_id" )
	"Notice_id" BIGINT CHECK ( "Notice_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT
);

--
-- The license definition.
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLicense" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLicense_id" BIGINT CHECK ( "tLicense_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "License" ( "License_id" )
	"License_id" BIGINT CHECK ( "License_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- ATTRIBUTE
	uri TEXT ,
-- NESTED KEY AS ATTRIBUTE : kind ( kind_id, DELEGATED TO "tLicenseKind_id" ), PARENT NODE : License
	kind_id BIGINT CHECK ( kind_id >= 0 )
);

--
-- Kind of content
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tContentKind_content CASCADE;
CREATE TYPE ENUM_tContentKind_content AS ENUM ( 'full', 'light' );
CREATE TABLE "tContentKind" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tContentKind_id" BIGINT CHECK ( "tContentKind_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: content
	content ENUM_tContentKind_content ,
-- FOREIGN KEY : content ( content_id )
	content_id BIGINT CHECK ( content_id >= 0 )
);

--
-- Kind of category
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tCategoryKind_content CASCADE;
CREATE TYPE ENUM_tCategoryKind_content AS ENUM ( 'informative', 'normative' );
CREATE TABLE "tCategoryKind" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCategoryKind_id" BIGINT CHECK ( "tCategoryKind_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: category
	content ENUM_tCategoryKind_content ,
-- FOREIGN KEY : category ( category_id )
	category_id BIGINT CHECK ( category_id >= 0 )
);

--
-- description of one element of the code component
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tNamedElement" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tNamedElement_id" BIGINT CHECK ( "tNamedElement_id" >= 0 ) PRIMARY KEY ,
-- ATTRIBUTE
	name TEXT NOT NULL ,
-- ATTRIBUTE
	comment TEXT ,
-- FOREIGN KEY : "tFile" ( "tFile_id" )
	"tFile_id" BIGINT CHECK ( "tFile_id" >= 0 ) ,
-- FOREIGN KEY : "tPublication" ( "tPublication_id" )
	"tPublication_id" BIGINT CHECK ( "tPublication_id" >= 0 ) ,
-- FOREIGN KEY : "tHistoryFile" ( "tHistoryFile_id" )
	"tHistoryFile_id" BIGINT CHECK ( "tHistoryFile_id" >= 0 )
);

--
-- Listing of the files composing the code component of the package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tCodeComponent" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tCodeComponent_id" BIGINT CHECK ( "tCodeComponent_id" >= 0 ) ,
-- NESTED KEY : "Publication" ( "Publication_id", DELEGATED TO "tPublication_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"Publication_id" BIGINT CHECK ( "Publication_id" >= 0 ) ,
-- NESTED KEY : "File" ( "File_id", DELEGATED TO "tFile_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"File_id" BIGINT CHECK ( "File_id" >= 0 ) ,
-- NESTED KEY : "HistoryFile" ( "HistoryFile_id", DELEGATED TO "tHistoryFile_id" ), PARENT NODE : CodeComponent, ANCESTOR NODE : IECManifest
	"HistoryFile_id" BIGINT CHECK ( "HistoryFile_id" >= 0 ) ,
-- ATTRIBUTE
	name TEXT NOT NULL ,
-- ATTRIBUTE
	id TEXT NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : content ( content_id, DELEGATED TO "tContentKind_id" ), PARENT NODE : CodeComponent
	content_id BIGINT CHECK ( content_id >= 0 ) ,
-- ATTRIBUTE
-- map XSD date (xs:date) to SQL DATE
	date DATE NOT NULL ,
-- FOREIGN KEY : "CodeComponent" ( "CodeComponent_id" )
	"CodeComponent_id" BIGINT CHECK ( "CodeComponent_id" >= 0 )
);

--
-- The copyright notice attached to the XML
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: extern root (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "Copyright" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"Copyright_id" ,
-- NESTED KEY : "tCopyrightNotice" ( "tCopyrightNotice_id" )
	"Copyright_id" AS "tCopyrightNotice_id"
FROM "tCopyrighted" WHERE "Copyright_id" IS NOT NULL;

--
-- kind of license
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW kind AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	kind_id ,
-- NESTED KEY AS ATTRIBUTE : "tLicenseKind" ( "tLicenseKind_id" ), PARENT NODE : License
	kind_id AS "tLicenseKind_id"
FROM "tLicense" WHERE kind_id IS NOT NULL;

--
-- Type of content (full descriptive, or light for distribution)
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW content AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	content_id ,
-- NESTED KEY AS ATTRIBUTE : "tContentKind" ( "tContentKind_id" ), PARENT NODE : File CodeComponent
	content_id AS "tContentKind_id"
FROM "tFile" WHERE content_id IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	content_id ,
-- NESTED KEY AS ATTRIBUTE : "tContentKind" ( "tContentKind_id" ), PARENT NODE : File CodeComponent
	content_id AS "tContentKind_id"
FROM "tCodeComponent" WHERE content_id IS NOT NULL;

--
-- Category of the element, if it is normative or informative
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW category AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	category_id ,
-- NESTED KEY AS ATTRIBUTE : "tCategoryKind" ( "tCategoryKind_id" ), PARENT NODE : File
	category_id AS "tCategoryKind_id"
FROM "tFile" WHERE category_id IS NOT NULL;

--
-- The textual copyright notice.
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "Notice" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"Notice_id" ,
-- NESTED KEY : "tNotice" ( "tNotice_id" ), PARENT NODE : Copyright
	"Notice_id" AS "tNotice_id"
FROM "tCopyrightNotice" WHERE "Notice_id" IS NOT NULL;

--
-- The license definition.
-- xmlns: no namespace, schema location: IECCopyright.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "License" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"License_id" ,
-- NESTED KEY : "tLicense" ( "tLicense_id" ), PARENT NODE : Copyright
	"License_id" AS "tLicense_id"
FROM "tCopyrightNotice" WHERE "License_id" IS NOT NULL;

--
-- The definition of the code components included in the package
-- xmlns: http://www.iec.ch/CC/2017/IECManifest (cc), schema location: IECManifest.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "CodeComponent" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"CodeComponent_id" ,
-- NESTED KEY : "tCodeComponent" ( "tCodeComponent_id" ), PARENT NODE : IECManifest
	"CodeComponent_id" AS "tCodeComponent_id"
FROM "tManifest" WHERE "CodeComponent_id" IS NOT NULL;

