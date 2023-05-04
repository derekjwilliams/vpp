--
-- PostgreSQL DDL generated from SCL.xsd using xsd2pgschema
--  xsd2pgschema - Database replication tool based on XML Schema
--  https://sourceforge.net/projects/xsd2pgschema/
--
-- Schema modeling options:
--  explicit named schema: false
--  relational extension: true
--  inline simple content: false
--  realize simple bridge: true
--  realize orphan/unused table: true
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
--  Generated 376 tables (1857 fields), 0 views (0 fields), 8 attr groups, 0 model groups in total
--  Found 34 tables (111 fields), 0 attr groups, 0 model groups in XML Schema: SCL_BaseSimpleTypes.xsd
--  Found 64 tables (194 fields), 0 attr groups, 0 model groups in XML Schema: SCL_Enums.xsd
--  Found 24 tables (124 fields), 1 attr groups, 0 model groups in XML Schema: SCL_BaseTypes.xsd
--  Found 80 tables (362 fields), 1 attr groups, 0 model groups in XML Schema: SCL_Substation.xsd
--  Found 210 tables (1031 fields), 5 attr groups, 0 model groups in XML Schema: SCL_IED.xsd
--  Found 49 tables (207 fields), 1 attr groups, 0 model groups in XML Schema: SCL_DataTypeTemplates.xsd
--   Namespaces:
--    http://www.w3.org/2001/XMLSchema (xs), http://www.iec.ch/61850/2003/SCL (scl)
--   Schema locations:
--    SCL_BaseSimpleTypes.xsd, SCL.xsd, SCL_DataTypeTemplates.xsd, SCL_IED.xsd, SCL_Substation.xsd, SCL_Enums.xsd, SCL_BaseTypes.xsd
--   Table types:
--    1 root, 3 root children, 2 extern root, 168 admin roots, 162 admin children
--   System keys:
--    336 primary keys (233 unique constraints), 292 foreign keys, 557 nested keys (220 as attribute, 10 as attribute group)
--   User keys:
--    336 document keys, 0 serial keys, 0 xpath keys
--   Contents:
--    153 attributes (0 in-place document keys), 3 elements (0 in-place document keys), 56 simple contents (0 in-place document keys, 37 as attribute, 1 as conditional attribute)
--   Wild cards:
--    2 any elements, 2 any attributes
--   Constraints:
--    10 unique constraints from xs:key, 363 unique constraints from xs:unique, 12 foreign key constraints from xs:keyref
--

--
-- COPYRIGHT (c) IEC, 2017. This version of this XSD is part of IEC 61850-6:2009; see the IEC 61850-6:2009 for full legal notices. In case of any differences between the here-below code and the IEC published content, the here-below definition supersedes the IEC publication; it may contain updates. See history files. The whole document has to be taken into account to have a full description of this code component. See www.iec.ch/CCv1 for copyright details. SCL schema version "2007" revision "B" release 2014-01-22, for IEC 61850-6 Ed. 2.0. Implemented Ed. 2 tissues: 658, 668, 687, 768, 779, 789, 804, 806, 807, 822, 824, 845, 853, 855, 856, 857, 886, 936, 1189. Ed. 2 Tissues not relevant for the SCL schema: 660, 661, 663 (see 706 for SCL-related changes, to be done for Ed.3), 678, 699, 700, 705, 718, 719, 721, 731, 733, 752, 769, 787, 788, 815, 823, 825, 901, 914, 915, 918, 927, 930.
--

DROP TABLE IF EXISTS "tRef" CASCADE;
DROP TABLE IF EXISTS "tAnyName" CASCADE;
DROP TABLE IF EXISTS "tAcsiName" CASCADE;
DROP TABLE IF EXISTS "tRestrName1stU" CASCADE;
DROP TABLE IF EXISTS "tRestrName1stL" CASCADE;
DROP TABLE IF EXISTS "tSclRevision" CASCADE;
DROP TABLE IF EXISTS "tIEDNameOrRelative" CASCADE;
DROP TABLE IF EXISTS "tLDName" CASCADE;
DROP TABLE IF EXISTS "tLDInst" CASCADE;
DROP TABLE IF EXISTS "tLDInstOrEmpty" CASCADE;
DROP TABLE IF EXISTS "tPrefix" CASCADE;
DROP TABLE IF EXISTS "tLNInst" CASCADE;
DROP TABLE IF EXISTS "tLNInstOrEmpty" CASCADE;
DROP TABLE IF EXISTS "tAccessPointName" CASCADE;
DROP TABLE IF EXISTS "tAssociationID" CASCADE;
DROP TABLE IF EXISTS "tVisibleBasicLatin" CASCADE;
DROP TABLE IF EXISTS "tFullAttributeName" CASCADE;
DROP TABLE IF EXISTS "tFullDOName" CASCADE;
DROP TABLE IF EXISTS "tNamespaceName" CASCADE;
DROP TABLE IF EXISTS "tLineType" CASCADE;
DROP TABLE IF EXISTS "tProcessType" CASCADE;
DROP TABLE IF EXISTS "tProcessName" CASCADE;
DROP TABLE IF EXISTS "tAttributeNameEnum" CASCADE;
DROP TABLE IF EXISTS "tCommonConductingEquipmentEnum" CASCADE;
DROP TABLE IF EXISTS "tPowerTransformerEnum" CASCADE;
DROP TABLE IF EXISTS "tTransformerWindingEnum" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipmentEnum" CASCADE;
DROP TABLE IF EXISTS "tServiceSettingsNoDynEnum" CASCADE;
DROP TABLE IF EXISTS "tServiceSettingsEnum" CASCADE;
DROP TABLE IF EXISTS "tSMVDeliveryEnum" CASCADE;
DROP TABLE IF EXISTS "tPhaseEnum" CASCADE;
DROP TABLE IF EXISTS "tAssociationKindEnum" CASCADE;
DROP TABLE IF EXISTS "tLNClassEnum" CASCADE;
DROP TABLE IF EXISTS "tPredefinedCDCEnum" CASCADE;
DROP TABLE IF EXISTS "tFCEnum" CASCADE;
DROP TABLE IF EXISTS "tPredefinedBasicTypeEnum" CASCADE;
DROP TABLE IF EXISTS "tValKindEnum" CASCADE;
DROP TABLE IF EXISTS "tGSEControlTypeEnum" CASCADE;
DROP TABLE IF EXISTS "tUnitMultiplierEnum" CASCADE;
DROP TABLE IF EXISTS "tRightEnum" CASCADE;
DROP TABLE IF EXISTS "tSDOCount" CASCADE;
DROP TABLE IF EXISTS "tDACount" CASCADE;
DROP TABLE IF EXISTS "tSmpMod" CASCADE;
DROP TABLE IF EXISTS "tServiceType" CASCADE;
DROP TABLE IF EXISTS "tPredefinedTypeOfSecurityEnum" CASCADE;
DROP TABLE IF EXISTS "tBaseElement" CASCADE;
DROP TABLE IF EXISTS "tAnyContentFromOtherNamespace" CASCADE;
DROP TABLE IF EXISTS "History" CASCADE;
DROP TABLE IF EXISTS "tVal" CASCADE;
DROP TABLE IF EXISTS "tValueWithUnit" CASCADE;
DROP TABLE IF EXISTS "tDurationInMilliSec" CASCADE;
DROP TABLE IF EXISTS "tBitRateInMbPerSec" CASCADE;
DROP TABLE IF EXISTS "tServices" CASCADE;
DROP TABLE IF EXISTS "tKDC" CASCADE;
DROP TABLE IF EXISTS "tServiceWithOptionalMax" CASCADE;
DROP TABLE IF EXISTS "tSettingGroups" CASCADE;
DROP TABLE IF EXISTS "tServiceYesNo" CASCADE;
DROP TABLE IF EXISTS "tServiceWithMaxNonZero" CASCADE;
DROP TABLE IF EXISTS "tServiceWithMax" CASCADE;
DROP TABLE IF EXISTS "tConfLNs" CASCADE;
DROP TABLE IF EXISTS "tClientServices" CASCADE;
DROP TABLE IF EXISTS "tSupSubscription" CASCADE;
DROP TABLE IF EXISTS "tValueHandling" CASCADE;
DROP TABLE IF EXISTS "tRedProt" CASCADE;
DROP TABLE IF EXISTS "tCert" CASCADE;
DROP TABLE IF EXISTS "Authentication" CASCADE;
DROP TABLE IF EXISTS "tAssociation" CASCADE;
DROP TABLE IF EXISTS "tFCDA" CASCADE;
DROP TABLE IF EXISTS "tTrgOps" CASCADE;
DROP TABLE IF EXISTS "OptFields" CASCADE;
DROP TABLE IF EXISTS "tClientLN" CASCADE;
DROP TABLE IF EXISTS "tExtRef" CASCADE;
DROP TABLE IF EXISTS "tProtocol" CASCADE;
DROP TABLE IF EXISTS "SmvOpts" CASCADE;
DROP TABLE IF EXISTS "tServiceSettings" CASCADE;
DROP TABLE IF EXISTS "DataTypeTemplates" CASCADE;
DROP TABLE IF EXISTS "tDataTypeTemplates" CASCADE;
DROP TABLE IF EXISTS "tEnumVal" CASCADE;
DROP TABLE IF EXISTS "tName" CASCADE;
DROP TABLE IF EXISTS "tIEDName" CASCADE;
DROP TABLE IF EXISTS "tDataName" CASCADE;
DROP TABLE IF EXISTS "tDataSetName" CASCADE;
DROP TABLE IF EXISTS "tCBName" CASCADE;
DROP TABLE IF EXISTS "tLogName" CASCADE;
DROP TABLE IF EXISTS "tMessageID" CASCADE;
DROP TABLE IF EXISTS "tSubDataName" CASCADE;
DROP TABLE IF EXISTS "tExtensionAttributeNameEnum" CASCADE;
DROP TABLE IF EXISTS "tCDCEnum" CASCADE;
DROP TABLE IF EXISTS "tBasicTypeEnum" CASCADE;
DROP TABLE IF EXISTS "tText" CASCADE;
DROP TABLE IF EXISTS "tPrivate" CASCADE;
DROP TABLE IF EXISTS "tUnNaming" CASCADE;
DROP TABLE IF EXISTS "tNaming" CASCADE;
DROP TABLE IF EXISTS "tIDNaming" CASCADE;
DROP TABLE IF EXISTS "tHitem" CASCADE;
DROP TABLE IF EXISTS "tHeader" CASCADE;
DROP TABLE IF EXISTS multiplier CASCADE;
DROP TABLE IF EXISTS "tVoltage" CASCADE;
DROP TABLE IF EXISTS "tDurationInSec" CASCADE;
DROP TABLE IF EXISTS phase CASCADE;
DROP TABLE IF EXISTS prefix CASCADE;
DROP TABLE IF EXISTS "lnClass" CASCADE;
DROP TABLE IF EXISTS "pathName" CASCADE;
DROP TABLE IF EXISTS "connectivityNode" CASCADE;
DROP TABLE IF EXISTS "processName" CASCADE;
DROP TABLE IF EXISTS "Services" CASCADE;
DROP TABLE IF EXISTS "KDC" CASCADE;
DROP TABLE IF EXISTS "originalSclRevision" CASCADE;
DROP TABLE IF EXISTS "engRight" CASCADE;
DROP TABLE IF EXISTS "DynAssociation" CASCADE;
DROP TABLE IF EXISTS "SettingGroups" CASCADE;
DROP TABLE IF EXISTS "GetDirectory" CASCADE;
DROP TABLE IF EXISTS "GetDataObjectDefinition" CASCADE;
DROP TABLE IF EXISTS "DataObjectDirectory" CASCADE;
DROP TABLE IF EXISTS "GetDataSetValue" CASCADE;
DROP TABLE IF EXISTS "SetDataSetValue" CASCADE;
DROP TABLE IF EXISTS "DataSetDirectory" CASCADE;
DROP TABLE IF EXISTS "tServiceWithMaxAndMaxAttributes" CASCADE;
DROP TABLE IF EXISTS "ReadWrite" CASCADE;
DROP TABLE IF EXISTS "TimerActivatedControl" CASCADE;
DROP TABLE IF EXISTS "tServiceConfReportControl" CASCADE;
DROP TABLE IF EXISTS "GetCBValues" CASCADE;
DROP TABLE IF EXISTS "ConfLogControl" CASCADE;
DROP TABLE IF EXISTS "tReportSettings" CASCADE;
DROP TABLE IF EXISTS "tLogSettings" CASCADE;
DROP TABLE IF EXISTS "tGSESettings" CASCADE;
DROP TABLE IF EXISTS "tSMVSettings" CASCADE;
DROP TABLE IF EXISTS "GSEDir" CASCADE;
DROP TABLE IF EXISTS "tGOOSEcapabilities" CASCADE;
DROP TABLE IF EXISTS "GSSE" CASCADE;
DROP TABLE IF EXISTS "tSMVsc" CASCADE;
DROP TABLE IF EXISTS "tFileHandling" CASCADE;
DROP TABLE IF EXISTS "ConfLNs" CASCADE;
DROP TABLE IF EXISTS "ClientServices" CASCADE;
DROP TABLE IF EXISTS "ConfLdName" CASCADE;
DROP TABLE IF EXISTS "SupSubscription" CASCADE;
DROP TABLE IF EXISTS "ConfSigRef" CASCADE;
DROP TABLE IF EXISTS "ValueHandling" CASCADE;
DROP TABLE IF EXISTS "RedProt" CASCADE;
DROP TABLE IF EXISTS "tTimeSyncProt" CASCADE;
DROP TABLE IF EXISTS "tCommProt" CASCADE;
DROP TABLE IF EXISTS "Subject" CASCADE;
DROP TABLE IF EXISTS "IssuerName" CASCADE;
DROP TABLE IF EXISTS "apName" CASCADE;
DROP TABLE IF EXISTS "Association" CASCADE;
DROP TABLE IF EXISTS "tAccessControl" CASCADE;
DROP TABLE IF EXISTS "ldName" CASCADE;
DROP TABLE IF EXISTS kind CASCADE;
DROP TABLE IF EXISTS "associationID" CASCADE;
DROP TABLE IF EXISTS "FCDA" CASCADE;
DROP TABLE IF EXISTS "doName" CASCADE;
DROP TABLE IF EXISTS "daName" CASCADE;
DROP TABLE IF EXISTS fc CASCADE;
DROP TABLE IF EXISTS "TrgOps" CASCADE;
DROP TABLE IF EXISTS "ClientLN" CASCADE;
DROP TABLE IF EXISTS "apRef" CASCADE;
DROP TABLE IF EXISTS "ExtRef" CASCADE;
DROP TABLE IF EXISTS "serviceType" CASCADE;
DROP TABLE IF EXISTS "srcLDInst" CASCADE;
DROP TABLE IF EXISTS "srcPrefix" CASCADE;
DROP TABLE IF EXISTS "srcLNClass" CASCADE;
DROP TABLE IF EXISTS "srcLNInst" CASCADE;
DROP TABLE IF EXISTS "Protocol" CASCADE;
DROP TABLE IF EXISTS "securityEnable" CASCADE;
DROP TABLE IF EXISTS "smpMod" CASCADE;
DROP TABLE IF EXISTS "Val" CASCADE;
DROP TABLE IF EXISTS "valKind" CASCADE;
DROP TABLE IF EXISTS "tServiceWithMaxAndModify" CASCADE;
DROP TABLE IF EXISTS "cbName" CASCADE;
DROP TABLE IF EXISTS "optFields" CASCADE;
DROP TABLE IF EXISTS "bufTime" CASCADE;
DROP TABLE IF EXISTS "trgOps" CASCADE;
DROP TABLE IF EXISTS "intgPd" CASCADE;
DROP TABLE IF EXISTS "logEna" CASCADE;
DROP TABLE IF EXISTS "dataLabel" CASCADE;
DROP TABLE IF EXISTS "svID" CASCADE;
DROP TABLE IF EXISTS "smpRate" CASCADE;
DROP TABLE IF EXISTS delivery CASCADE;
DROP TABLE IF EXISTS "SGEdit" CASCADE;
DROP TABLE IF EXISTS "ConfSG" CASCADE;
DROP TABLE IF EXISTS "iedType" CASCADE;
DROP TABLE IF EXISTS "tProtNs" CASCADE;
DROP TABLE IF EXISTS "EnumVal" CASCADE;
DROP TABLE IF EXISTS revision CASCADE;
DROP TABLE IF EXISTS "tSclVersion" CASCADE;
DROP TABLE IF EXISTS "Text" CASCADE;
DROP TABLE IF EXISTS "Private" CASCADE;
DROP TABLE IF EXISTS id CASCADE;
DROP TABLE IF EXISTS "Hitem" CASCADE;
DROP TABLE IF EXISTS "tLNode" CASCADE;
DROP TABLE IF EXISTS "tLNodeContainer" CASCADE;
DROP TABLE IF EXISTS "tTerminal" CASCADE;
DROP TABLE IF EXISTS "Voltage" CASCADE;
DROP TABLE IF EXISTS "ldInst" CASCADE;
DROP TABLE IF EXISTS "lnInst" CASCADE;
DROP TABLE IF EXISTS "lnType" CASCADE;
DROP TABLE IF EXISTS "substationName" CASCADE;
DROP TABLE IF EXISTS "voltageLevelName" CASCADE;
DROP TABLE IF EXISTS "bayName" CASCADE;
DROP TABLE IF EXISTS "cNodeName" CASCADE;
DROP TABLE IF EXISTS "tIED" CASCADE;
DROP TABLE IF EXISTS "tAccessPoint" CASCADE;
DROP TABLE IF EXISTS "tServiceForConfDataSet" CASCADE;
DROP TABLE IF EXISTS "DynDataSet" CASCADE;
DROP TABLE IF EXISTS "ConfReportControl" CASCADE;
DROP TABLE IF EXISTS "ReportSettings" CASCADE;
DROP TABLE IF EXISTS "LogSettings" CASCADE;
DROP TABLE IF EXISTS "GSESettings" CASCADE;
DROP TABLE IF EXISTS "SMVSettings" CASCADE;
DROP TABLE IF EXISTS "GOOSE" CASCADE;
DROP TABLE IF EXISTS "SMVsc" CASCADE;
DROP TABLE IF EXISTS "FileHandling" CASCADE;
DROP TABLE IF EXISTS "TimeSyncProt" CASCADE;
DROP TABLE IF EXISTS "CommProt" CASCADE;
DROP TABLE IF EXISTS "tServerAt" CASCADE;
DROP TABLE IF EXISTS "tCertificate" CASCADE;
DROP TABLE IF EXISTS "AccessControl" CASCADE;
DROP TABLE IF EXISTS inst CASCADE;
DROP TABLE IF EXISTS "tDataSet" CASCADE;
DROP TABLE IF EXISTS "tDOI" CASCADE;
DROP TABLE IF EXISTS "tInputs" CASCADE;
DROP TABLE IF EXISTS "tLog" CASCADE;
DROP TABLE IF EXISTS "tAnyLN" CASCADE;
DROP TABLE IF EXISTS "tSettingControl" CASCADE;
DROP TABLE IF EXISTS "tControl" CASCADE;
DROP TABLE IF EXISTS "tRptEnabled" CASCADE;
DROP TABLE IF EXISTS "logName" CASCADE;
DROP TABLE IF EXISTS "srcCBName" CASCADE;
DROP TABLE IF EXISTS "IEDName" CASCADE;
DROP TABLE IF EXISTS "smvID" CASCADE;
DROP TABLE IF EXISTS "tSDI" CASCADE;
DROP TABLE IF EXISTS "tDAI" CASCADE;
DROP TABLE IF EXISTS "bType" CASCADE;
DROP TABLE IF EXISTS count CASCADE;
DROP TABLE IF EXISTS "tAbstractDataAttribute" CASCADE;
DROP TABLE IF EXISTS "tDO" CASCADE;
DROP TABLE IF EXISTS "tLNodeType" CASCADE;
DROP TABLE IF EXISTS "tSDO" CASCADE;
DROP TABLE IF EXISTS cdc CASCADE;
DROP TABLE IF EXISTS "tDOType" CASCADE;
DROP TABLE IF EXISTS "ProtNs" CASCADE;
DROP TABLE IF EXISTS "tDAType" CASCADE;
DROP TABLE IF EXISTS "tEnumType" CASCADE;
DROP TABLE IF EXISTS "Header" CASCADE;
DROP TABLE IF EXISTS "LNode" CASCADE;
DROP TABLE IF EXISTS "tPowerSystemResource" CASCADE;
DROP TABLE IF EXISTS "Terminal" CASCADE;
DROP TABLE IF EXISTS "NeutralPoint" CASCADE;
DROP TABLE IF EXISTS "tConnectivityNode" CASCADE;
DROP TABLE IF EXISTS "iedName" CASCADE;
DROP TABLE IF EXISTS "tLN0" CASCADE;
DROP TABLE IF EXISTS "tLN" CASCADE;
DROP TABLE IF EXISTS "IED" CASCADE;
DROP TABLE IF EXISTS "originalSclVersion" CASCADE;
DROP TABLE IF EXISTS "ConfDataSet" CASCADE;
DROP TABLE IF EXISTS "tServer" CASCADE;
DROP TABLE IF EXISTS "ServerAt" CASCADE;
DROP TABLE IF EXISTS "GOOSESecurity" CASCADE;
DROP TABLE IF EXISTS "SMVSecurity" CASCADE;
DROP TABLE IF EXISTS "DOI" CASCADE;
DROP TABLE IF EXISTS "Inputs" CASCADE;
DROP TABLE IF EXISTS "Log" CASCADE;
DROP TABLE IF EXISTS "SettingControl" CASCADE;
DROP TABLE IF EXISTS "datSet" CASCADE;
DROP TABLE IF EXISTS "tControlWithTriggerOpt" CASCADE;
DROP TABLE IF EXISTS "RptEnabled" CASCADE;
DROP TABLE IF EXISTS "rptID" CASCADE;
DROP TABLE IF EXISTS "tControlWithIEDName" CASCADE;
DROP TABLE IF EXISTS "appID" CASCADE;
DROP TABLE IF EXISTS "SDI" CASCADE;
DROP TABLE IF EXISTS "DAI" CASCADE;
DROP TABLE IF EXISTS "DO" CASCADE;
DROP TABLE IF EXISTS "SDO" CASCADE;
DROP TABLE IF EXISTS "tDA" CASCADE;
DROP TABLE IF EXISTS "tBDA" CASCADE;
DROP TABLE IF EXISTS "DAType" CASCADE;
DROP TABLE IF EXISTS "EnumType" CASCADE;
DROP TABLE IF EXISTS version CASCADE;
DROP TABLE IF EXISTS "tEquipmentContainer" CASCADE;
DROP TABLE IF EXISTS "tEquipment" CASCADE;
DROP TABLE IF EXISTS "tSubEquipment" CASCADE;
DROP TABLE IF EXISTS "tTapChanger" CASCADE;
DROP TABLE IF EXISTS "tFunction" CASCADE;
DROP TABLE IF EXISTS "ConnectivityNode" CASCADE;
DROP TABLE IF EXISTS "tSubFunction" CASCADE;
DROP TABLE IF EXISTS "tAbstractEqFuncSubFunc" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipmentContainer" CASCADE;
DROP TABLE IF EXISTS "LN0" CASCADE;
DROP TABLE IF EXISTS "LN" CASCADE;
DROP TABLE IF EXISTS "Server" CASCADE;
DROP TABLE IF EXISTS "tLogControl" CASCADE;
DROP TABLE IF EXISTS "tGSEControl" CASCADE;
DROP TABLE IF EXISTS "DA" CASCADE;
DROP TABLE IF EXISTS "BDA" CASCADE;
DROP TABLE IF EXISTS "Substation" CASCADE;
DROP TABLE IF EXISTS "tSubstation" CASCADE;
DROP TABLE IF EXISTS "tProcess" CASCADE;
DROP TABLE IF EXISTS "tLine" CASCADE;
DROP TABLE IF EXISTS "tPowerTransformer" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipment" CASCADE;
DROP TABLE IF EXISTS "SubEquipment" CASCADE;
DROP TABLE IF EXISTS "tAbstractConductingEquipment" CASCADE;
DROP TABLE IF EXISTS "tEqFunction" CASCADE;
DROP TABLE IF EXISTS "TapChanger" CASCADE;
DROP TABLE IF EXISTS "tVoltageLevel" CASCADE;
DROP TABLE IF EXISTS "Function" CASCADE;
DROP TABLE IF EXISTS "tBay" CASCADE;
DROP TABLE IF EXISTS "SubFunction" CASCADE;
DROP TABLE IF EXISTS "tEqSubFunction" CASCADE;
DROP TABLE IF EXISTS "tReportControl" CASCADE;
DROP TABLE IF EXISTS "LogControl" CASCADE;
DROP TABLE IF EXISTS "GSEControl" CASCADE;
DROP TABLE IF EXISTS "tSampledValueControl" CASCADE;
DROP TABLE IF EXISTS "Process" CASCADE;
DROP TABLE IF EXISTS "Line" CASCADE;
DROP TABLE IF EXISTS "PowerTransformer" CASCADE;
DROP TABLE IF EXISTS "GeneralEquipment" CASCADE;
DROP TABLE IF EXISTS "EqFunction" CASCADE;
DROP TABLE IF EXISTS "tConductingEquipment" CASCADE;
DROP TABLE IF EXISTS "tTransformerWinding" CASCADE;
DROP TABLE IF EXISTS "VoltageLevel" CASCADE;
DROP TABLE IF EXISTS "Bay" CASCADE;
DROP TABLE IF EXISTS "EqSubFunction" CASCADE;
DROP TABLE IF EXISTS "ReportControl" CASCADE;
DROP TABLE IF EXISTS "SampledValueControl" CASCADE;
DROP TABLE IF EXISTS "TransformerWinding" CASCADE;
DROP TABLE IF EXISTS "ConductingEquipment" CASCADE;
DROP TABLE IF EXISTS "tLDevice" CASCADE;
DROP TABLE IF EXISTS "AccessPoint" CASCADE;
DROP TABLE IF EXISTS type CASCADE;
DROP TABLE IF EXISTS "LDevice" CASCADE;
DROP TABLE IF EXISTS "DOType" CASCADE;
DROP TABLE IF EXISTS "LNodeType" CASCADE;
DROP TABLE IF EXISTS name CASCADE;
DROP TABLE IF EXISTS "SCL" CASCADE;
DROP TABLE IF EXISTS "DataSet" CASCADE;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DataSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DataSet_id" BIGINT CHECK ( "DataSet_id" >= 0 ) ,
-- NESTED KEY : "tDataSet" ( "tDataSet_id" ), PARENT NODE : LN
	"tDataSet_id" BIGINT CHECK ( "tDataSet_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL.xsd
-- type: root, content: true, list: false, bridge: false, virtual: false
--
CREATE TABLE "SCL" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- NESTED KEY : "Header" ( "Header_id", DELEGATED TO "tHeader_id" )
	"Header_id" BIGINT CHECK ( "Header_id" >= 0 ) ,
-- NESTED KEY : "Substation" ( "Substation_id" )
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 ) ,
-- NESTED KEY : "DataTypeTemplates" ( "DataTypeTemplates_id" )
	"DataTypeTemplates_id" BIGINT CHECK ( "DataTypeTemplates_id" >= 0 ) ,
-- NESTED KEY : "Line" ( "Line_id" )
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 ) ,
-- NESTED KEY : "Process" ( "Process_id" )
	"Process_id" BIGINT CHECK ( "Process_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : version ( version_id, DELEGATED TO "tSclVersion_id" )
	version_id BIGINT CHECK ( version_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : revision ( revision_id, DELEGATED TO "tSclRevision_id" )
	revision_id BIGINT CHECK ( revision_id >= 0 ) ,
-- ATTRIBUTE
-- map XSD date (xs:date) to SQL DATE
	"schemaDate" DATE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE name (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" )
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAnyName" ( "tAnyName_id" ), PARENT NODE : Terminal NeutralPoint
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tIEDName" ( "tIEDName_id" )
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAccessPointName" ( "tAccessPointName_id" ), PARENT NODE : AccessPoint
	"tAccessPointName_id" BIGINT CHECK ( "tAccessPointName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tDataSetName" ( "tDataSetName_id" ), PARENT NODE : DataSet
	"tDataSetName_id" BIGINT CHECK ( "tDataSetName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tCBName" ( "tCBName_id" )
	"tCBName_id" BIGINT CHECK ( "tCBName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLogName" ( "tLogName_id" ), PARENT NODE : Log
	"tLogName_id" BIGINT CHECK ( "tLogName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tDataName" ( "tDataName_id" ), PARENT NODE : DOI
	"tDataName_id" BIGINT CHECK ( "tDataName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAttributeNameEnum" ( "tAttributeNameEnum_id" ), PARENT NODE : SDI DAI
	"tAttributeNameEnum_id" BIGINT CHECK ( "tAttributeNameEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tSubDataName" ( "tSubDataName_id" ), PARENT NODE : SDO
	"tSubDataName_id" BIGINT CHECK ( "tSubDataName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "LNodeType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LNodeType_id" BIGINT CHECK ( "LNodeType_id" >= 0 ) ,
-- NESTED KEY : "tLNodeType" ( "tLNodeType_id" ), PARENT NODE : DataTypeTemplates
	"tLNodeType_id" BIGINT CHECK ( "tLNodeType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DOType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DOType_id" BIGINT CHECK ( "DOType_id" >= 0 ) ,
-- NESTED KEY : "tDOType" ( "tDOType_id" ), PARENT NODE : DataTypeTemplates
	"tDOType_id" BIGINT CHECK ( "tDOType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "LDevice" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LDevice_id" BIGINT CHECK ( "LDevice_id" >= 0 ) ,
-- NESTED KEY : "tLDevice" ( "tLDevice_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"tLDevice_id" BIGINT CHECK ( "tLDevice_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE type (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tCommonConductingEquipmentEnum" ( "tCommonConductingEquipmentEnum_id" ), PARENT NODE : ConductingEquipment
	"tCommonConductingEquipmentEnum_id" BIGINT CHECK ( "tCommonConductingEquipmentEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tPowerTransformerEnum" ( "tPowerTransformerEnum_id" ), PARENT NODE : PowerTransformer
	"tPowerTransformerEnum_id" BIGINT CHECK ( "tPowerTransformerEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tTransformerWindingEnum" ( "tTransformerWindingEnum_id" ), PARENT NODE : TransformerWinding
	"tTransformerWindingEnum_id" BIGINT CHECK ( "tTransformerWindingEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tGeneralEquipmentEnum" ( "tGeneralEquipmentEnum_id" ), PARENT NODE : GeneralEquipment
	"tGeneralEquipmentEnum_id" BIGINT CHECK ( "tGeneralEquipmentEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLineType" ( "tLineType_id" ), PARENT NODE : Line
	"tLineType_id" BIGINT CHECK ( "tLineType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tProcessType" ( "tProcessType_id" ), PARENT NODE : Process
	"tProcessType_id" BIGINT CHECK ( "tProcessType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tGSEControlTypeEnum" ( "tGSEControlTypeEnum_id" ), PARENT NODE : GSEControl
	"tGSEControlTypeEnum_id" BIGINT CHECK ( "tGSEControlTypeEnum_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAnyName" ( "tAnyName_id" )
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : DO SDO
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "AccessPoint" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"AccessPoint_id" BIGINT CHECK ( "AccessPoint_id" >= 0 ) ,
-- NESTED KEY : "tAccessPoint" ( "tAccessPoint_id" )
	"tAccessPoint_id" BIGINT CHECK ( "tAccessPoint_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "TransformerWinding" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"TransformerWinding_id" BIGINT CHECK ( "TransformerWinding_id" >= 0 ) ,
-- NESTED KEY : "tTransformerWinding" ( "tTransformerWinding_id" ), PARENT NODE : PowerTransformer, ANCESTOR NODE : Bay
	"tTransformerWinding_id" BIGINT CHECK ( "tTransformerWinding_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ConductingEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "tConductingEquipment" ( "tConductingEquipment_id" ), PARENT NODE : Bay Function SubFunction Line Process, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"tConductingEquipment_id" BIGINT CHECK ( "tConductingEquipment_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLDevice" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLDevice_id" BIGINT CHECK ( "tLDevice_id" >= 0 ) ,
-- FOREIGN KEY : "LDevice" ( "LDevice_id" )
	"LDevice_id" BIGINT CHECK ( "LDevice_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : LDevice, ANCESTOR NODE : Server
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "LN0" ( "LN0_id" )
	"LN0_id" BIGINT CHECK ( "LN0_id" >= 0 ) ,
-- NESTED KEY : "LN" ( "LN_id", DELEGATED TO "tLN_id" )
	"LN_id" BIGINT CHECK ( "LN_id" >= 0 ) ,
-- NESTED KEY : "AccessControl" ( "AccessControl_id", DELEGATED TO "tAccessControl_id" ), PARENT NODE : LDevice, ANCESTOR NODE : Server
	"AccessControl_id" BIGINT CHECK ( "AccessControl_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : inst ( inst_id, DELEGATED TO "tLDInst_id" ), PARENT NODE : LDevice
	inst_id BIGINT CHECK ( inst_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldName" ( "ldName_id", DELEGATED TO "tLDName_id" ), PARENT NODE : LDevice
	"ldName_id" BIGINT CHECK ( "ldName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Process" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Process_id" BIGINT CHECK ( "Process_id" >= 0 ) ,
-- NESTED KEY : "tProcess" ( "tProcess_id" )
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 ) ,
-- FOREIGN KEY : "SCL" ( "SCL_id" )
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) CONSTRAINT FK_Process_SCL REFERENCES "SCL" ( "SCL_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Line" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 ) ,
-- NESTED KEY : "tLine" ( "tLine_id" )
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 ) ,
-- FOREIGN KEY : "SCL" ( "SCL_id" )
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) CONSTRAINT FK_Line_SCL REFERENCES "SCL" ( "SCL_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "PowerTransformer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"PowerTransformer_id" BIGINT CHECK ( "PowerTransformer_id" >= 0 ) ,
-- NESTED KEY : "tPowerTransformer" ( "tPowerTransformer_id" ), PARENT NODE : Bay
	"tPowerTransformer_id" BIGINT CHECK ( "tPowerTransformer_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "GeneralEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "tGeneralEquipment" ( "tGeneralEquipment_id" ), PARENT NODE : Bay Function SubFunction Line, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"tGeneralEquipment_id" BIGINT CHECK ( "tGeneralEquipment_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "EqFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY : "tEqFunction" ( "tEqFunction_id" ), PARENT NODE : ConductingEquipment SubEquipment PowerTransformer TransformerWinding TapChanger GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Line TransformerWinding PowerTransformer TapChanger Process
	"tEqFunction_id" BIGINT CHECK ( "tEqFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tConductingEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tConductingEquipment_id" BIGINT CHECK ( "tConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "tAbstractConductingEquipment" ( "tAbstractConductingEquipment_id" ), PARENT NODE : ConductingEquipment, ANCESTOR NODE : Bay Function SubFunction Line Process
	"tAbstractConductingEquipment_id" BIGINT CHECK ( "tAbstractConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : ConductingEquipment, ANCESTOR NODE : Bay Function SubFunction Line Process
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tCommonConductingEquipmentEnum_id" ), PARENT NODE : ConductingEquipment
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- FOREIGN KEY : "ConductingEquipment" ( "ConductingEquipment_id" )
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tTransformerWinding" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tTransformerWinding_id" BIGINT CHECK ( "tTransformerWinding_id" >= 0 ) ,
-- FOREIGN KEY : "TransformerWinding" ( "TransformerWinding_id" )
	"TransformerWinding_id" BIGINT CHECK ( "TransformerWinding_id" >= 0 ) ,
-- NESTED KEY : "tAbstractConductingEquipment" ( "tAbstractConductingEquipment_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"tAbstractConductingEquipment_id" BIGINT CHECK ( "tAbstractConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "TapChanger" ( "TapChanger_id", DELEGATED TO "tTapChanger_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"TapChanger_id" BIGINT CHECK ( "TapChanger_id" >= 0 ) ,
-- NESTED KEY : "NeutralPoint" ( "NeutralPoint_id", DELEGATED TO "tTerminal_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"NeutralPoint_id" BIGINT CHECK ( "NeutralPoint_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tTransformerWindingEnum_id" ), PARENT NODE : TransformerWinding
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "VoltageLevel" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"VoltageLevel_id" BIGINT CHECK ( "VoltageLevel_id" >= 0 ) ,
-- NESTED KEY : "tVoltageLevel" ( "tVoltageLevel_id" ), PARENT NODE : Substation
	"tVoltageLevel_id" BIGINT CHECK ( "tVoltageLevel_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Bay" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Bay_id" BIGINT CHECK ( "Bay_id" >= 0 ) ,
-- NESTED KEY : "tBay" ( "tBay_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"tBay_id" BIGINT CHECK ( "tBay_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "EqSubFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"EqSubFunction_id" BIGINT CHECK ( "EqSubFunction_id" >= 0 ) ,
-- NESTED KEY : "tEqSubFunction" ( "tEqSubFunction_id" )
	"tEqSubFunction_id" BIGINT CHECK ( "tEqSubFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ReportControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ReportControl_id" BIGINT CHECK ( "ReportControl_id" >= 0 ) ,
-- NESTED KEY : "tReportControl" ( "tReportControl_id" ), PARENT NODE : LN
	"tReportControl_id" BIGINT CHECK ( "tReportControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SampledValueControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SampledValueControl_id" BIGINT CHECK ( "SampledValueControl_id" >= 0 ) ,
-- NESTED KEY : "tSampledValueControl" ( "tSampledValueControl_id" ), PARENT NODE : LN0
	"tSampledValueControl_id" BIGINT CHECK ( "tSampledValueControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL.xsd
-- type: extern root, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Substation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 ) ,
-- NESTED KEY : "tSubstation" ( "tSubstation_id" )
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 ) ,
-- FOREIGN KEY : "SCL" ( "SCL_id" )
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) CONSTRAINT FK_Substation_SCL REFERENCES "SCL" ( "SCL_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tSubstation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Substation" ( "Substation_id" )
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 ) ,
-- NESTED KEY : "tEquipmentContainer" ( "tEquipmentContainer_id" ), PARENT NODE : Substation
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "VoltageLevel" ( "VoltageLevel_id", DELEGATED TO "tVoltageLevel_id" ), PARENT NODE : Substation
	"VoltageLevel_id" BIGINT CHECK ( "VoltageLevel_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : Substation
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tProcess" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Process" ( "Process_id" )
	"Process_id" BIGINT CHECK ( "Process_id" >= 0 ) ,
-- NESTED KEY : "tGeneralEquipmentContainer" ( "tGeneralEquipmentContainer_id" )
	"tGeneralEquipmentContainer_id" BIGINT CHECK ( "tGeneralEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" )
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "Substation" ( "Substation_id", DELEGATED TO "tSubstation_id" )
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 ) ,
-- NESTED KEY : "Line" ( "Line_id", DELEGATED TO "tLine_id" )
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 ) ,
-- NESTED KEY : "Process" ( "Process_id", DELEGATED TO "tProcess_id" )
	"_Process_id" BIGINT CHECK ( "_Process_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tProcessType_id" )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLine" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Line" ( "Line_id" )
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 ) ,
-- NESTED KEY : "tGeneralEquipmentContainer" ( "tGeneralEquipmentContainer_id" ), PARENT NODE : Line
	"tGeneralEquipmentContainer_id" BIGINT CHECK ( "tGeneralEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" ), PARENT NODE : Line
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConnectivityNode" ( "ConnectivityNode_id", DELEGATED TO "tConnectivityNode_id" ), PARENT NODE : Line
	"ConnectivityNode_id" BIGINT CHECK ( "ConnectivityNode_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tLineType_id" ), PARENT NODE : Line
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tPowerTransformer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tPowerTransformer_id" BIGINT CHECK ( "tPowerTransformer_id" >= 0 ) ,
-- FOREIGN KEY : "PowerTransformer" ( "PowerTransformer_id" )
	"PowerTransformer_id" BIGINT CHECK ( "PowerTransformer_id" >= 0 ) ,
-- NESTED KEY : "tEquipment" ( "tEquipment_id" ), PARENT NODE : PowerTransformer, ANCESTOR NODE : Bay
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- NESTED KEY : "TransformerWinding" ( "TransformerWinding_id", DELEGATED TO "tTransformerWinding_id" ), PARENT NODE : PowerTransformer, ANCESTOR NODE : Bay
	"TransformerWinding_id" BIGINT CHECK ( "TransformerWinding_id" >= 0 ) ,
-- NESTED KEY : "SubEquipment" ( "SubEquipment_id", DELEGATED TO "tSubEquipment_id" ), PARENT NODE : PowerTransformer, ANCESTOR NODE : Bay
	"SubEquipment_id" BIGINT CHECK ( "SubEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : PowerTransformer, ANCESTOR NODE : Bay
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tPowerTransformerEnum_id" ), PARENT NODE : PowerTransformer
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tGeneralEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tGeneralEquipment_id" BIGINT CHECK ( "tGeneralEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "GeneralEquipment" ( "GeneralEquipment_id" )
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "tEquipment" ( "tEquipment_id" ), PARENT NODE : GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Line
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Line
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tGeneralEquipmentEnum_id" ), PARENT NODE : GeneralEquipment
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SubEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SubEquipment_id" BIGINT CHECK ( "SubEquipment_id" >= 0 ) ,
-- NESTED KEY : "tSubEquipment" ( "tSubEquipment_id" ), PARENT NODE : TransformerWinding PowerTransformer TapChanger
	"tSubEquipment_id" BIGINT CHECK ( "tSubEquipment_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tAbstractConductingEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAbstractConductingEquipment_id" BIGINT CHECK ( "tAbstractConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "tEquipment" ( "tEquipment_id" ), PARENT NODE : TransformerWinding
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- NESTED KEY : "Terminal" ( "Terminal_id", DELEGATED TO "tTerminal_id" ), PARENT NODE : TransformerWinding
	"Terminal_id" BIGINT CHECK ( "Terminal_id" >= 0 ) ,
-- NESTED KEY : "SubEquipment" ( "SubEquipment_id", DELEGATED TO "tSubEquipment_id" ), PARENT NODE : TransformerWinding
	"SubEquipment_id" BIGINT CHECK ( "SubEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tConductingEquipment" ( "tConductingEquipment_id" )
	"tConductingEquipment_id" BIGINT CHECK ( "tConductingEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tTransformerWinding" ( "tTransformerWinding_id" )
	"tTransformerWinding_id" BIGINT CHECK ( "tTransformerWinding_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tEqFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEqFunction_id" BIGINT CHECK ( "tEqFunction_id" >= 0 ) ,
-- FOREIGN KEY : "EqFunction" ( "EqFunction_id" )
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY : "tAbstractEqFuncSubFunc" ( "tAbstractEqFuncSubFunc_id" ), PARENT NODE : EqFunction, ANCESTOR NODE : ConductingEquipment SubEquipment PowerTransformer TransformerWinding TapChanger GeneralEquipment
	"tAbstractEqFuncSubFunc_id" BIGINT CHECK ( "tAbstractEqFuncSubFunc_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "TapChanger" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"TapChanger_id" BIGINT CHECK ( "TapChanger_id" >= 0 ) ,
-- NESTED KEY : "tTapChanger" ( "tTapChanger_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"tTapChanger_id" BIGINT CHECK ( "tTapChanger_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tVoltageLevel" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tVoltageLevel_id" BIGINT CHECK ( "tVoltageLevel_id" >= 0 ) ,
-- FOREIGN KEY : "VoltageLevel" ( "VoltageLevel_id" )
	"VoltageLevel_id" BIGINT CHECK ( "VoltageLevel_id" >= 0 ) ,
-- NESTED KEY : "tEquipmentContainer" ( "tEquipmentContainer_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "Voltage" ( "Voltage_id", DELEGATED TO "tVoltage_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"Voltage_id" BIGINT CHECK ( "Voltage_id" >= 0 ) ,
-- NESTED KEY : "Bay" ( "Bay_id", DELEGATED TO "tBay_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"Bay_id" BIGINT CHECK ( "Bay_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minInclusive="0"
	"nomFreq" DECIMAL CHECK ( "nomFreq" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minExclusive="0"
	"numPhases" SMALLINT CHECK ( "numPhases" > 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Function" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- NESTED KEY : "tFunction" ( "tFunction_id" ), PARENT NODE : Substation VoltageLevel Bay Line
	"tFunction_id" BIGINT CHECK ( "tFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tBay" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tBay_id" BIGINT CHECK ( "tBay_id" >= 0 ) ,
-- FOREIGN KEY : "Bay" ( "Bay_id" )
	"Bay_id" BIGINT CHECK ( "Bay_id" >= 0 ) ,
-- NESTED KEY : "tEquipmentContainer" ( "tEquipmentContainer_id" ), PARENT NODE : Bay, ANCESTOR NODE : VoltageLevel
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" ), PARENT NODE : Bay, ANCESTOR NODE : VoltageLevel
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConnectivityNode" ( "ConnectivityNode_id", DELEGATED TO "tConnectivityNode_id" ), PARENT NODE : Bay, ANCESTOR NODE : VoltageLevel
	"ConnectivityNode_id" BIGINT CHECK ( "ConnectivityNode_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : Bay, ANCESTOR NODE : VoltageLevel
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SubFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SubFunction_id" BIGINT CHECK ( "SubFunction_id" >= 0 ) ,
-- NESTED KEY : "tSubFunction" ( "tSubFunction_id" ), PARENT NODE : Function SubFunction, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"tSubFunction_id" BIGINT CHECK ( "tSubFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tEqSubFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEqSubFunction_id" BIGINT CHECK ( "tEqSubFunction_id" >= 0 ) ,
-- FOREIGN KEY : "EqSubFunction" ( "EqSubFunction_id" )
	"EqSubFunction_id" BIGINT CHECK ( "EqSubFunction_id" >= 0 ) ,
-- NESTED KEY : "tAbstractEqFuncSubFunc" ( "tAbstractEqFuncSubFunc_id" ), PARENT NODE : EqSubFunction
	"tAbstractEqFuncSubFunc_id" BIGINT CHECK ( "tAbstractEqFuncSubFunc_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tReportControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tReportControl_id" BIGINT CHECK ( "tReportControl_id" >= 0 ) ,
-- FOREIGN KEY : "ReportControl" ( "ReportControl_id" )
	"ReportControl_id" BIGINT CHECK ( "ReportControl_id" >= 0 ) ,
-- NESTED KEY : "tControlWithTriggerOpt" ( "tControlWithTriggerOpt_id" ), PARENT NODE : ReportControl, ANCESTOR NODE : LN
	"tControlWithTriggerOpt_id" BIGINT CHECK ( "tControlWithTriggerOpt_id" >= 0 ) ,
-- NESTED KEY : "OptFields" ( "OptFields_id" ), PARENT NODE : ReportControl, ANCESTOR NODE : LN
	"OptFields_id" BIGINT CHECK ( "OptFields_id" >= 0 ) ,
-- NESTED KEY : "RptEnabled" ( "RptEnabled_id", DELEGATED TO "tRptEnabled_id" ), PARENT NODE : ReportControl, ANCESTOR NODE : LN
	"RptEnabled_id" BIGINT CHECK ( "RptEnabled_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "rptID" ( "rptID_id", DELEGATED TO "tMessageID_id" ), PARENT NODE : ReportControl
	"rptID_id" BIGINT CHECK ( "rptID_id" >= 0 ) ,
-- ATTRIBUTE
	"confRev" INTEGER CHECK ( "confRev" >= 0 ) NOT NULL ,
-- ATTRIBUTE
-- @default="false"
	buffered BOOLEAN ,
-- ATTRIBUTE
-- @default="0"
	"bufTime" INTEGER CHECK ( "bufTime" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	indexed BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "LogControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LogControl_id" BIGINT CHECK ( "LogControl_id" >= 0 ) ,
-- NESTED KEY : "tLogControl" ( "tLogControl_id" ), PARENT NODE : LN
	"tLogControl_id" BIGINT CHECK ( "tLogControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "GSEControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"GSEControl_id" BIGINT CHECK ( "GSEControl_id" >= 0 ) ,
-- NESTED KEY : "tGSEControl" ( "tGSEControl_id" ), PARENT NODE : LN0
	"tGSEControl_id" BIGINT CHECK ( "tGSEControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSampledValueControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSampledValueControl_id" BIGINT CHECK ( "tSampledValueControl_id" >= 0 ) ,
-- FOREIGN KEY : "SampledValueControl" ( "SampledValueControl_id" )
	"SampledValueControl_id" BIGINT CHECK ( "SampledValueControl_id" >= 0 ) ,
-- NESTED KEY : "tControlWithIEDName" ( "tControlWithIEDName_id" ), PARENT NODE : SampledValueControl, ANCESTOR NODE : LN0
	"tControlWithIEDName_id" BIGINT CHECK ( "tControlWithIEDName_id" >= 0 ) ,
-- NESTED KEY : "SmvOpts" ( "SmvOpts_id" ), PARENT NODE : SampledValueControl, ANCESTOR NODE : LN0
	"SmvOpts_id" BIGINT CHECK ( "SmvOpts_id" >= 0 ) ,
-- NESTED KEY : "Protocol" ( "Protocol_id", DELEGATED TO "tProtocol_id" ), PARENT NODE : SampledValueControl, ANCESTOR NODE : LN0
	"Protocol_id" BIGINT CHECK ( "Protocol_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "smvID" ( "smvID_id", DELEGATED TO "tMessageID_id" ), PARENT NODE : SampledValueControl
	"smvID_id" BIGINT CHECK ( "smvID_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	multicast BOOLEAN ,
-- ATTRIBUTE
	"smpRate" INTEGER CHECK ( "smpRate" >= 0 ) NOT NULL ,
-- ATTRIBUTE
	"nofASDU" INTEGER CHECK ( "nofASDU" >= 0 ) NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : "smpMod" ( "smpMod_id", DELEGATED TO "tSmpMod_id" ), PARENT NODE : SampledValueControl
	"smpMod_id" BIGINT CHECK ( "smpMod_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "securityEnable" ( "securityEnable_id", DELEGATED TO "tPredefinedTypeOfSecurityEnum_id" ), PARENT NODE : SampledValueControl
	"securityEnable_id" BIGINT CHECK ( "securityEnable_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tEquipmentContainer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : Bay
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "PowerTransformer" ( "PowerTransformer_id", DELEGATED TO "tPowerTransformer_id" ), PARENT NODE : Bay
	"PowerTransformer_id" BIGINT CHECK ( "PowerTransformer_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" ), PARENT NODE : Bay
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tSubstation" ( "tSubstation_id" )
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 ) CONSTRAINT FK_tEquipmentContainer_tSubstation REFERENCES "tSubstation" ( "tSubstation_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tVoltageLevel" ( "tVoltageLevel_id" )
	"tVoltageLevel_id" BIGINT CHECK ( "tVoltageLevel_id" >= 0 ) ,
-- FOREIGN KEY : "tBay" ( "tBay_id" )
	"tBay_id" BIGINT CHECK ( "tBay_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" )
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	virtual BOOLEAN ,
-- FOREIGN KEY : "tAbstractConductingEquipment" ( "tAbstractConductingEquipment_id" )
	"tAbstractConductingEquipment_id" BIGINT CHECK ( "tAbstractConductingEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tPowerTransformer" ( "tPowerTransformer_id" )
	"tPowerTransformer_id" BIGINT CHECK ( "tPowerTransformer_id" >= 0 ) ,
-- FOREIGN KEY : "tGeneralEquipment" ( "tGeneralEquipment_id" )
	"tGeneralEquipment_id" BIGINT CHECK ( "tGeneralEquipment_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tSubEquipment" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSubEquipment_id" BIGINT CHECK ( "tSubEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "SubEquipment" ( "SubEquipment_id" )
	"SubEquipment_id" BIGINT CHECK ( "SubEquipment_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : SubEquipment, ANCESTOR NODE : TransformerWinding PowerTransformer TapChanger
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : SubEquipment, ANCESTOR NODE : TransformerWinding PowerTransformer TapChanger
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : phase ( phase_id, DELEGATED TO "tPhaseEnum_id" ), PARENT NODE : SubEquipment
	phase_id BIGINT CHECK ( phase_id >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	virtual BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tTapChanger" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tTapChanger_id" BIGINT CHECK ( "tTapChanger_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "TapChanger" ( "TapChanger_id" )
	"TapChanger_id" BIGINT CHECK ( "TapChanger_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : TapChanger, ANCESTOR NODE : TransformerWinding
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "SubEquipment" ( "SubEquipment_id", DELEGATED TO "tSubEquipment_id" ), PARENT NODE : TapChanger, ANCESTOR NODE : TransformerWinding
	"SubEquipment_id" BIGINT CHECK ( "SubEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : TapChanger, ANCESTOR NODE : TransformerWinding
	"EqFunction_id" BIGINT CHECK ( "EqFunction_id" >= 0 ) ,
-- ATTRIBUTE
	type TEXT CHECK ( type = 'LTC' ) NOT NULL ,
-- ATTRIBUTE
-- @default="false"
	virtual BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tFunction_id" BIGINT CHECK ( "tFunction_id" >= 0 ) ,
-- FOREIGN KEY : "Function" ( "Function_id" )
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "SubFunction" ( "SubFunction_id", DELEGATED TO "tSubFunction_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"SubFunction_id" BIGINT CHECK ( "SubFunction_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Line
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- ATTRIBUTE
	type TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ConnectivityNode" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ConnectivityNode_id" BIGINT CHECK ( "ConnectivityNode_id" >= 0 ) ,
-- NESTED KEY : "tConnectivityNode" ( "tConnectivityNode_id" ), PARENT NODE : Bay Line, ANCESTOR NODE : VoltageLevel
	"tConnectivityNode_id" BIGINT CHECK ( "tConnectivityNode_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tSubFunction" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSubFunction_id" BIGINT CHECK ( "tSubFunction_id" >= 0 ) ,
-- FOREIGN KEY : "SubFunction" ( "SubFunction_id" )
	"SubFunction_id" BIGINT CHECK ( "SubFunction_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" )
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" )
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" )
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "SubFunction" ( "SubFunction_id", DELEGATED TO "tSubFunction_id" )
	"_SubFunction_id" BIGINT CHECK ( "_SubFunction_id" >= 0 ) ,
-- ATTRIBUTE
	type TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tAbstractEqFuncSubFunc" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAbstractEqFuncSubFunc_id" BIGINT CHECK ( "tAbstractEqFuncSubFunc_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" )
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" )
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqSubFunction" ( "EqSubFunction_id", DELEGATED TO "tEqSubFunction_id" )
	"EqSubFunction_id" BIGINT CHECK ( "EqSubFunction_id" >= 0 ) ,
-- ATTRIBUTE
	type TEXT ,
-- FOREIGN KEY : "tEqFunction" ( "tEqFunction_id" )
	"tEqFunction_id" BIGINT CHECK ( "tEqFunction_id" >= 0 ) ,
-- FOREIGN KEY : "tEqSubFunction" ( "tEqSubFunction_id" )
	"tEqSubFunction_id" BIGINT CHECK ( "tEqSubFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tGeneralEquipmentContainer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tGeneralEquipmentContainer_id" BIGINT CHECK ( "tGeneralEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : Line
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" ), PARENT NODE : Line
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : Line
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- FOREIGN KEY : "tLine" ( "tLine_id" )
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 ) CONSTRAINT FK_tGeneralEquipmentContainer_tLine REFERENCES "tLine" ( "tLine_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tProcess" ( "tProcess_id" )
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 ) CONSTRAINT FK_tGeneralEquipmentContainer_tProcess REFERENCES "tProcess" ( "tProcess_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "LN0" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LN0_id" BIGINT CHECK ( "LN0_id" >= 0 ) ,
-- NESTED KEY : "tLN0" ( "tLN0_id" )
	"tLN0_id" BIGINT CHECK ( "tLN0_id" >= 0 ) ,
-- FOREIGN KEY : "tLDevice" ( "tLDevice_id" )
	"tLDevice_id" BIGINT CHECK ( "tLDevice_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "LN" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LN_id" BIGINT CHECK ( "LN_id" >= 0 ) ,
-- NESTED KEY : "tLN" ( "tLN_id" )
	"tLN_id" BIGINT CHECK ( "tLN_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Server" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Server_id" BIGINT CHECK ( "Server_id" >= 0 ) ,
-- NESTED KEY : "tServer" ( "tServer_id" ), PARENT NODE : AccessPoint
	"tServer_id" BIGINT CHECK ( "tServer_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLogControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLogControl_id" BIGINT CHECK ( "tLogControl_id" >= 0 ) ,
-- FOREIGN KEY : "LogControl" ( "LogControl_id" )
	"LogControl_id" BIGINT CHECK ( "LogControl_id" >= 0 ) ,
-- NESTED KEY : "tControlWithTriggerOpt" ( "tControlWithTriggerOpt_id" ), PARENT NODE : LogControl, ANCESTOR NODE : LN
	"tControlWithTriggerOpt_id" BIGINT CHECK ( "tControlWithTriggerOpt_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" ), PARENT NODE : LogControl
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" ), PARENT NODE : LogControl
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : LogControl
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInst_id" ), PARENT NODE : LogControl
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "logName" ( "logName_id", DELEGATED TO "tLogName_id" ), PARENT NODE : LogControl
	"logName_id" BIGINT CHECK ( "logName_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	"logEna" BOOLEAN ,
-- ATTRIBUTE
-- @default="true"
	"reasonCode" BOOLEAN ,
-- ATTRIBUTE
-- @default="0"
	"bufTime" INTEGER CHECK ( "bufTime" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tGSEControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tGSEControl_id" BIGINT CHECK ( "tGSEControl_id" >= 0 ) ,
-- FOREIGN KEY : "GSEControl" ( "GSEControl_id" )
	"GSEControl_id" BIGINT CHECK ( "GSEControl_id" >= 0 ) ,
-- NESTED KEY : "tControlWithIEDName" ( "tControlWithIEDName_id" ), PARENT NODE : GSEControl, ANCESTOR NODE : LN0
	"tControlWithIEDName_id" BIGINT CHECK ( "tControlWithIEDName_id" >= 0 ) ,
-- NESTED KEY : "Protocol" ( "Protocol_id", DELEGATED TO "tProtocol_id" ), PARENT NODE : GSEControl, ANCESTOR NODE : LN0
	"Protocol_id" BIGINT CHECK ( "Protocol_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tGSEControlTypeEnum_id" ), PARENT NODE : GSEControl
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "appID" ( "appID_id", DELEGATED TO "tMessageID_id" ), PARENT NODE : GSEControl
	"appID_id" BIGINT CHECK ( "appID_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"fixedOffs" BOOLEAN ,
-- NESTED KEY AS ATTRIBUTE : "securityEnable" ( "securityEnable_id", DELEGATED TO "tPredefinedTypeOfSecurityEnum_id" ), PARENT NODE : GSEControl
	"securityEnable_id" BIGINT CHECK ( "securityEnable_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DA_id" BIGINT CHECK ( "DA_id" >= 0 ) ,
-- NESTED KEY : "tDA" ( "tDA_id" ), PARENT NODE : DOType, ANCESTOR NODE : DataTypeTemplates
	"tDA_id" BIGINT CHECK ( "tDA_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "BDA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"BDA_id" BIGINT CHECK ( "BDA_id" >= 0 ) ,
-- NESTED KEY : "tBDA" ( "tBDA_id" ), PARENT NODE : DAType, ANCESTOR NODE : DataTypeTemplates
	"tBDA_id" BIGINT CHECK ( "tBDA_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "LNode" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"LNode_id" BIGINT CHECK ( "LNode_id" >= 0 ) ,
-- NESTED KEY : "tLNode" ( "tLNode_id" ), PARENT NODE : ConnectivityNode
	"tLNode_id" BIGINT CHECK ( "tLNode_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tPowerSystemResource" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "tLNodeContainer" ( "tLNodeContainer_id" ), PARENT NODE : Line
	"tLNodeContainer_id" BIGINT CHECK ( "tLNodeContainer_id" >= 0 ) ,
-- FOREIGN KEY : "tEquipmentContainer" ( "tEquipmentContainer_id" )
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- FOREIGN KEY : "tEquipment" ( "tEquipment_id" )
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tSubEquipment" ( "tSubEquipment_id" )
	"tSubEquipment_id" BIGINT CHECK ( "tSubEquipment_id" >= 0 ) ,
-- FOREIGN KEY : "tTapChanger" ( "tTapChanger_id" )
	"tTapChanger_id" BIGINT CHECK ( "tTapChanger_id" >= 0 ) CONSTRAINT FK_tPowerSystemResource_tTapChanger REFERENCES "tTapChanger" ( "tTapChanger_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tFunction" ( "tFunction_id" )
	"tFunction_id" BIGINT CHECK ( "tFunction_id" >= 0 ) ,
-- FOREIGN KEY : "tSubFunction" ( "tSubFunction_id" )
	"tSubFunction_id" BIGINT CHECK ( "tSubFunction_id" >= 0 ) ,
-- FOREIGN KEY : "tAbstractEqFuncSubFunc" ( "tAbstractEqFuncSubFunc_id" )
	"tAbstractEqFuncSubFunc_id" BIGINT CHECK ( "tAbstractEqFuncSubFunc_id" >= 0 ) ,
-- FOREIGN KEY : "tGeneralEquipmentContainer" ( "tGeneralEquipmentContainer_id" )
	"tGeneralEquipmentContainer_id" BIGINT CHECK ( "tGeneralEquipmentContainer_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Terminal" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Terminal_id" BIGINT CHECK ( "Terminal_id" >= 0 ) ,
-- NESTED KEY : "tTerminal" ( "tTerminal_id" ), PARENT NODE : TransformerWinding
	"tTerminal_id" BIGINT CHECK ( "tTerminal_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "NeutralPoint" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"NeutralPoint_id" BIGINT CHECK ( "NeutralPoint_id" >= 0 ) ,
-- NESTED KEY : "tTerminal" ( "tTerminal_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"tTerminal_id" BIGINT CHECK ( "tTerminal_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tConnectivityNode" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tConnectivityNode_id" BIGINT CHECK ( "tConnectivityNode_id" >= 0 ) ,
-- FOREIGN KEY : "ConnectivityNode" ( "ConnectivityNode_id" )
	"ConnectivityNode_id" BIGINT CHECK ( "ConnectivityNode_id" >= 0 ) ,
-- NESTED KEY : "tLNodeContainer" ( "tLNodeContainer_id" ), PARENT NODE : ConnectivityNode, ANCESTOR NODE : Bay Line
	"tLNodeContainer_id" BIGINT CHECK ( "tLNodeContainer_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "pathName" ( "pathName_id", DELEGATED TO "tRef_id" ), PARENT NODE : ConnectivityNode
	"pathName_id" BIGINT CHECK ( "pathName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "iedName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tIEDName" ( "tIEDName_id" ), PARENT NODE : LNode KDC
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tIEDNameOrRelative" ( "tIEDNameOrRelative_id" ), PARENT NODE : ExtRef
	"tIEDNameOrRelative_id" BIGINT CHECK ( "tIEDNameOrRelative_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLN0" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLN0_id" BIGINT CHECK ( "tLN0_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "LN0" ( "LN0_id" )
	"LN0_id" BIGINT CHECK ( "LN0_id" >= 0 ) ,
-- NESTED KEY : "tAnyLN" ( "tAnyLN_id" ), PARENT NODE : LN0
	"tAnyLN_id" BIGINT CHECK ( "tAnyLN_id" >= 0 ) ,
-- NESTED KEY : "GSEControl" ( "GSEControl_id", DELEGATED TO "tGSEControl_id" ), PARENT NODE : LN0
	"GSEControl_id" BIGINT CHECK ( "GSEControl_id" >= 0 ) ,
-- NESTED KEY : "SampledValueControl" ( "SampledValueControl_id", DELEGATED TO "tSampledValueControl_id" ), PARENT NODE : LN0
	"SampledValueControl_id" BIGINT CHECK ( "SampledValueControl_id" >= 0 ) ,
-- NESTED KEY : "SettingControl" ( "SettingControl_id", DELEGATED TO "tSettingControl_id" ), PARENT NODE : LN0
	"SettingControl_id" BIGINT CHECK ( "SettingControl_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : LN0
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- ATTRIBUTE
	inst TEXT NOT NULL
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLN" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLN_id" BIGINT CHECK ( "tLN_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "LN" ( "LN_id" )
	"LN_id" BIGINT CHECK ( "LN_id" >= 0 ) ,
-- NESTED KEY : "tAnyLN" ( "tAnyLN_id" ), PARENT NODE : LN
	"tAnyLN_id" BIGINT CHECK ( "tAnyLN_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" ), PARENT NODE : LN
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : LN
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : inst ( inst_id, DELEGATED TO "tLNInst_id" ), PARENT NODE : LN
	inst_id BIGINT CHECK ( inst_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "IED" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"IED_id" BIGINT CHECK ( "IED_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tIED" ( "tIED_id" )
	"tIED_id" BIGINT CHECK ( "tIED_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "originalSclVersion" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"originalSclVersion_id" BIGINT CHECK ( "originalSclVersion_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tSclVersion" ( "tSclVersion_id" )
	"tSclVersion_id" BIGINT CHECK ( "tSclVersion_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfDataSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfDataSet_id" BIGINT CHECK ( "ConfDataSet_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceForConfDataSet" ( "tServiceForConfDataSet_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceForConfDataSet_id" BIGINT CHECK ( "tServiceForConfDataSet_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tServer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServer_id" BIGINT CHECK ( "tServer_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Server" ( "Server_id" )
	"Server_id" BIGINT CHECK ( "Server_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "Authentication" ( "Authentication_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"Authentication_id" BIGINT CHECK ( "Authentication_id" >= 0 ) ,
-- NESTED KEY : "LDevice" ( "LDevice_id", DELEGATED TO "tLDevice_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"LDevice_id" BIGINT CHECK ( "LDevice_id" >= 0 ) ,
-- NESTED KEY : "Association" ( "Association_id", DELEGATED TO "tAssociation_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"Association_id" BIGINT CHECK ( "Association_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="30"
	timeout INTEGER CHECK ( timeout >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ServerAt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ServerAt_id" BIGINT CHECK ( "ServerAt_id" >= 0 ) ,
-- NESTED KEY : "tServerAt" ( "tServerAt_id" ), PARENT NODE : AccessPoint
	"tServerAt_id" BIGINT CHECK ( "tServerAt_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "GOOSESecurity" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"GOOSESecurity_id" BIGINT CHECK ( "GOOSESecurity_id" >= 0 ) ,
-- NESTED KEY : "tCertificate" ( "tCertificate_id" ), PARENT NODE : AccessPoint
	"tCertificate_id" BIGINT CHECK ( "tCertificate_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SMVSecurity" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SMVSecurity_id" BIGINT CHECK ( "SMVSecurity_id" >= 0 ) ,
-- NESTED KEY : "tCertificate" ( "tCertificate_id" ), PARENT NODE : AccessPoint
	"tCertificate_id" BIGINT CHECK ( "tCertificate_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DOI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DOI_id" BIGINT CHECK ( "DOI_id" >= 0 ) ,
-- NESTED KEY : "tDOI" ( "tDOI_id" ), PARENT NODE : LN
	"tDOI_id" BIGINT CHECK ( "tDOI_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Inputs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Inputs_id" BIGINT CHECK ( "Inputs_id" >= 0 ) ,
-- NESTED KEY : "tInputs" ( "tInputs_id" ), PARENT NODE : LN
	"tInputs_id" BIGINT CHECK ( "tInputs_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Log" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Log_id" BIGINT CHECK ( "Log_id" >= 0 ) ,
-- NESTED KEY : "tLog" ( "tLog_id" ), PARENT NODE : LN
	"tLog_id" BIGINT CHECK ( "tLog_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SettingControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SettingControl_id" BIGINT CHECK ( "SettingControl_id" >= 0 ) ,
-- NESTED KEY : "tSettingControl" ( "tSettingControl_id" ), PARENT NODE : LN0
	"tSettingControl_id" BIGINT CHECK ( "tSettingControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "datSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"datSet_id" BIGINT CHECK ( "datSet_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tDataSetName" ( "tDataSetName_id" )
	"tDataSetName_id" BIGINT CHECK ( "tDataSetName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tControlWithTriggerOpt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tControlWithTriggerOpt_id" BIGINT CHECK ( "tControlWithTriggerOpt_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tControl" ( "tControl_id" )
	"tControl_id" BIGINT CHECK ( "tControl_id" >= 0 ) ,
-- NESTED KEY : "TrgOps" ( "TrgOps_id", DELEGATED TO "tTrgOps_id" )
	"TrgOps_id" BIGINT CHECK ( "TrgOps_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="0"
	"intgPd" INTEGER CHECK ( "intgPd" >= 0 ) ,
-- FOREIGN KEY : "tReportControl" ( "tReportControl_id" )
	"tReportControl_id" BIGINT CHECK ( "tReportControl_id" >= 0 ) ,
-- FOREIGN KEY : "tLogControl" ( "tLogControl_id" )
	"tLogControl_id" BIGINT CHECK ( "tLogControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "RptEnabled" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"RptEnabled_id" BIGINT CHECK ( "RptEnabled_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tRptEnabled" ( "tRptEnabled_id" ), PARENT NODE : ReportControl, ANCESTOR NODE : LN
	"tRptEnabled_id" BIGINT CHECK ( "tRptEnabled_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "rptID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"rptID_id" BIGINT CHECK ( "rptID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tMessageID" ( "tMessageID_id" ), PARENT NODE : ReportControl
	"tMessageID_id" BIGINT CHECK ( "tMessageID_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tControlWithIEDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tControlWithIEDName_id" BIGINT CHECK ( "tControlWithIEDName_id" >= 0 ) ,
-- NESTED KEY : "tControl" ( "tControl_id" )
	"tControl_id" BIGINT CHECK ( "tControl_id" >= 0 ) ,
-- NESTED KEY : "IEDName" ( "IEDName_id", DELEGATED TO "tIEDName_id" )
	"IEDName_id" BIGINT CHECK ( "IEDName_id" >= 0 ) ,
-- ATTRIBUTE
	"confRev" INTEGER CHECK ( "confRev" >= 0 ) ,
-- FOREIGN KEY : "tGSEControl" ( "tGSEControl_id" )
	"tGSEControl_id" BIGINT CHECK ( "tGSEControl_id" >= 0 ) ,
-- FOREIGN KEY : "tSampledValueControl" ( "tSampledValueControl_id" )
	"tSampledValueControl_id" BIGINT CHECK ( "tSampledValueControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "appID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"appID_id" BIGINT CHECK ( "appID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tMessageID" ( "tMessageID_id" ), PARENT NODE : GSEControl
	"tMessageID_id" BIGINT CHECK ( "tMessageID_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : GSESettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SDI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SDI_id" BIGINT CHECK ( "SDI_id" >= 0 ) ,
-- NESTED KEY : "tSDI" ( "tSDI_id" ), PARENT NODE : DOI SDI, ANCESTOR NODE : LN
	"tSDI_id" BIGINT CHECK ( "tSDI_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DAI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DAI_id" BIGINT CHECK ( "DAI_id" >= 0 ) ,
-- NESTED KEY : "tDAI" ( "tDAI_id" ), PARENT NODE : DOI SDI, ANCESTOR NODE : LN
	"tDAI_id" BIGINT CHECK ( "tDAI_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DO" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DO_id" BIGINT CHECK ( "DO_id" >= 0 ) ,
-- NESTED KEY : "tDO" ( "tDO_id" ), PARENT NODE : LNodeType, ANCESTOR NODE : DataTypeTemplates
	"tDO_id" BIGINT CHECK ( "tDO_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "SDO" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"SDO_id" BIGINT CHECK ( "SDO_id" >= 0 ) ,
-- NESTED KEY : "tSDO" ( "tSDO_id" ), PARENT NODE : DOType, ANCESTOR NODE : DataTypeTemplates
	"tSDO_id" BIGINT CHECK ( "tSDO_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDA_id" BIGINT CHECK ( "tDA_id" >= 0 ) ,
-- FOREIGN KEY : "DA" ( "DA_id" )
	"DA_id" BIGINT CHECK ( "DA_id" >= 0 ) ,
-- NESTED KEY : "tAbstractDataAttribute" ( "tAbstractDataAttribute_id" ), PARENT NODE : DA, ANCESTOR NODE : DOType
	"tAbstractDataAttribute_id" BIGINT CHECK ( "tAbstractDataAttribute_id" >= 0 ) ,
-- NESTED KEY : "ProtNs" ( "ProtNs_id", DELEGATED TO "tProtNs_id" ), PARENT NODE : DA, ANCESTOR NODE : DOType
	"ProtNs_id" BIGINT CHECK ( "ProtNs_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	dchg BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	qchg BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	dupd BOOLEAN ,
-- NESTED KEY AS ATTRIBUTE : fc ( fc_id, DELEGATED TO "tFCEnum_id" ), PARENT NODE : DA
	fc_id BIGINT CHECK ( fc_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tBDA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tBDA_id" BIGINT CHECK ( "tBDA_id" >= 0 ) ,
-- FOREIGN KEY : "BDA" ( "BDA_id" )
	"BDA_id" BIGINT CHECK ( "BDA_id" >= 0 ) ,
-- NESTED KEY : "tAbstractDataAttribute" ( "tAbstractDataAttribute_id" ), PARENT NODE : BDA, ANCESTOR NODE : DAType
	"tAbstractDataAttribute_id" BIGINT CHECK ( "tAbstractDataAttribute_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "DAType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"DAType_id" BIGINT CHECK ( "DAType_id" >= 0 ) ,
-- NESTED KEY : "tDAType" ( "tDAType_id" ), PARENT NODE : DataTypeTemplates
	"tDAType_id" BIGINT CHECK ( "tDAType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "EnumType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"EnumType_id" BIGINT CHECK ( "EnumType_id" >= 0 ) ,
-- NESTED KEY : "tEnumType" ( "tEnumType_id" ), PARENT NODE : DataTypeTemplates
	"tEnumType_id" BIGINT CHECK ( "tEnumType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL.xsd
-- type: root child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE version (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	version_id BIGINT CHECK ( version_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tSclVersion" ( "tSclVersion_id" )
	"tSclVersion_id" BIGINT CHECK ( "tSclVersion_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd SCL.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tSclVersion" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSclVersion_id" BIGINT CHECK ( "tSclVersion_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tName" ( "tName_id" ), PARENT NODE : originalSclVersion version
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) ,
-- FOREIGN KEY : "originalSclVersion" ( "originalSclVersion_id" )
	"originalSclVersion_id" BIGINT CHECK ( "originalSclVersion_id" >= 0 ) ,
-- FOREIGN KEY : version ( version_id )
	version_id BIGINT CHECK ( version_id >= 0 ) CONSTRAINT FK_tSclVersion_version REFERENCES version ( version_id ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Text" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- NESTED KEY : "tText" ( "tText_id" ), PARENT NODE : SCL Header
	"tText_id" BIGINT CHECK ( "tText_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Private" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Private_id" BIGINT CHECK ( "Private_id" >= 0 ) ,
-- NESTED KEY : "tPrivate" ( "tPrivate_id" ), PARENT NODE : SCL
	"tPrivate_id" BIGINT CHECK ( "tPrivate_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE id (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	id_id BIGINT CHECK ( id_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" )
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Hitem" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Hitem_id" BIGINT CHECK ( "Hitem_id" >= 0 ) ,
-- NESTED KEY : "tHitem" ( "tHitem_id" )
	"tHitem_id" BIGINT CHECK ( "tHitem_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNode" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLNode_id" BIGINT CHECK ( "tLNode_id" >= 0 ) ,
-- FOREIGN KEY : "LNode" ( "LNode_id" )
	"LNode_id" BIGINT CHECK ( "LNode_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : LNode, ANCESTOR NODE : ConnectivityNode
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "iedName" ( "iedName_id", DELEGATED TO "tIEDName_id" ), PARENT NODE : LNode
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInstOrEmpty_id" ), PARENT NODE : LNode
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" ), PARENT NODE : LNode
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : LNode
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInstOrEmpty_id" ), PARENT NODE : LNode
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnType" ( "lnType_id", DELEGATED TO "tName_id" ), PARENT NODE : LNode
	"lnType_id" BIGINT CHECK ( "lnType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLNodeContainer" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLNodeContainer_id" BIGINT CHECK ( "tLNodeContainer_id" >= 0 ) ,
-- NESTED KEY : "tNaming" ( "tNaming_id" ), PARENT NODE : ConnectivityNode
	"tNaming_id" BIGINT CHECK ( "tNaming_id" >= 0 ) ,
-- NESTED KEY : "LNode" ( "LNode_id", DELEGATED TO "tLNode_id" ), PARENT NODE : ConnectivityNode
	"LNode_id" BIGINT CHECK ( "LNode_id" >= 0 ) ,
-- FOREIGN KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" )
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- FOREIGN KEY : "tConnectivityNode" ( "tConnectivityNode_id" )
	"tConnectivityNode_id" BIGINT CHECK ( "tConnectivityNode_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tTerminal" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tTerminal_id" BIGINT CHECK ( "tTerminal_id" >= 0 ) ,
-- FOREIGN KEY : "Terminal" ( "Terminal_id" )
	"Terminal_id" BIGINT CHECK ( "Terminal_id" >= 0 ) ,
-- FOREIGN KEY : "NeutralPoint" ( "NeutralPoint_id" )
	"NeutralPoint_id" BIGINT CHECK ( "NeutralPoint_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : Terminal NeutralPoint
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tAnyName_id" ), PARENT NODE : Terminal NeutralPoint
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "connectivityNode" ( "connectivityNode_id", DELEGATED TO "tRef_id" ), PARENT NODE : Terminal NeutralPoint
	"connectivityNode_id" BIGINT CHECK ( "connectivityNode_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "processName" ( "processName_id", DELEGATED TO "tProcessName_id" ), PARENT NODE : Terminal NeutralPoint
	"processName_id" BIGINT CHECK ( "processName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "substationName" ( "substationName_id", DELEGATED TO "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"substationName_id" BIGINT CHECK ( "substationName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "voltageLevelName" ( "voltageLevelName_id", DELEGATED TO "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"voltageLevelName_id" BIGINT CHECK ( "voltageLevelName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "bayName" ( "bayName_id", DELEGATED TO "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"bayName_id" BIGINT CHECK ( "bayName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "cNodeName" ( "cNodeName_id", DELEGATED TO "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"cNodeName_id" BIGINT CHECK ( "cNodeName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Voltage" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Voltage_id" BIGINT CHECK ( "Voltage_id" >= 0 ) ,
-- NESTED KEY : "tVoltage" ( "tVoltage_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"tVoltage_id" BIGINT CHECK ( "tVoltage_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "ldInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLDInstOrEmpty" ( "tLDInstOrEmpty_id" ), PARENT NODE : LNode
	"tLDInstOrEmpty_id" BIGINT CHECK ( "tLDInstOrEmpty_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLDInst" ( "tLDInst_id" ), PARENT NODE : FCDA LogControl ExtRef
	"tLDInst_id" BIGINT CHECK ( "tLDInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE "lnInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLNInstOrEmpty" ( "tLNInstOrEmpty_id" ), PARENT NODE : LNode
	"tLNInstOrEmpty_id" BIGINT CHECK ( "tLNInstOrEmpty_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLNInst" ( "tLNInst_id" ), PARENT NODE : FCDA LogControl ExtRef
	"tLNInst_id" BIGINT CHECK ( "tLNInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "lnType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"lnType_id" BIGINT CHECK ( "lnType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : LNode LN
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "substationName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"substationName_id" BIGINT CHECK ( "substationName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "voltageLevelName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"voltageLevelName_id" BIGINT CHECK ( "voltageLevelName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "bayName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"bayName_id" BIGINT CHECK ( "bayName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "cNodeName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"cNodeName_id" BIGINT CHECK ( "cNodeName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tIED" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tIED_id" BIGINT CHECK ( "tIED_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "IED" ( "IED_id" )
	"IED_id" BIGINT CHECK ( "IED_id" >= 0 ) CONSTRAINT FK_tIED_IED REFERENCES "IED" ( "IED_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "Services" ( "Services_id", DELEGATED TO "tServices_id" )
	"Services_id" BIGINT CHECK ( "Services_id" >= 0 ) ,
-- NESTED KEY : "AccessPoint" ( "AccessPoint_id", DELEGATED TO "tAccessPoint_id" )
	"AccessPoint_id" BIGINT CHECK ( "AccessPoint_id" >= 0 ) ,
-- NESTED KEY : "KDC" ( "KDC_id", DELEGATED TO "tKDC_id" )
	"KDC_id" BIGINT CHECK ( "KDC_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tIEDName_id" )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	type TEXT ,
-- ATTRIBUTE
	manufacturer TEXT ,
-- ATTRIBUTE
	"configVersion" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "originalSclVersion" ( "originalSclVersion_id", DELEGATED TO "tSclVersion_id" )
	"originalSclVersion_id" BIGINT CHECK ( "originalSclVersion_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "originalSclRevision" ( "originalSclRevision_id", DELEGATED TO "tSclRevision_id" )
	"originalSclRevision_id" BIGINT CHECK ( "originalSclRevision_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "engRight" ( "engRight_id", DELEGATED TO "tRightEnum_id" )
	"engRight_id" BIGINT CHECK ( "engRight_id" >= 0 ) ,
-- ATTRIBUTE
	owner TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tAccessPoint" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAccessPoint_id" BIGINT CHECK ( "tAccessPoint_id" >= 0 ) ,
-- FOREIGN KEY : "AccessPoint" ( "AccessPoint_id" )
	"AccessPoint_id" BIGINT CHECK ( "AccessPoint_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : AccessPoint
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "Server" ( "Server_id", DELEGATED TO "tServer_id" ), PARENT NODE : AccessPoint
	"Server_id" BIGINT CHECK ( "Server_id" >= 0 ) ,
-- NESTED KEY : "LN" ( "LN_id", DELEGATED TO "tLN_id" )
	"LN_id" BIGINT CHECK ( "LN_id" >= 0 ) ,
-- NESTED KEY : "ServerAt" ( "ServerAt_id", DELEGATED TO "tServerAt_id" ), PARENT NODE : AccessPoint
	"ServerAt_id" BIGINT CHECK ( "ServerAt_id" >= 0 ) ,
-- NESTED KEY : "Services" ( "Services_id", DELEGATED TO "tServices_id" ), PARENT NODE : AccessPoint
	"Services_id" BIGINT CHECK ( "Services_id" >= 0 ) ,
-- NESTED KEY : "GOOSESecurity" ( "GOOSESecurity_id", DELEGATED TO "tCertificate_id" ), PARENT NODE : AccessPoint
	"GOOSESecurity_id" BIGINT CHECK ( "GOOSESecurity_id" >= 0 ) ,
-- NESTED KEY : "SMVSecurity" ( "SMVSecurity_id", DELEGATED TO "tCertificate_id" ), PARENT NODE : AccessPoint
	"SMVSecurity_id" BIGINT CHECK ( "SMVSecurity_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tAccessPointName_id" ), PARENT NODE : AccessPoint
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	router BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	clock BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	kdc BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tServiceForConfDataSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceForConfDataSet_id" BIGINT CHECK ( "tServiceForConfDataSet_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ConfDataSet" ( "ConfDataSet_id" )
	"ConfDataSet_id" BIGINT CHECK ( "ConfDataSet_id" >= 0 ) CONSTRAINT FK_tServiceForConfDataSet_ConfDataSet REFERENCES "ConfDataSet" ( "ConfDataSet_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceWithMaxAndMaxAttributes" ( "tServiceWithMaxAndMaxAttributes_id" ), PARENT NODE : ConfDataSet, ANCESTOR NODE : Services
	"tServiceWithMaxAndMaxAttributes_id" BIGINT CHECK ( "tServiceWithMaxAndMaxAttributes_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	modify BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "DynDataSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"DynDataSet_id" BIGINT CHECK ( "DynDataSet_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceWithMaxAndMaxAttributes" ( "tServiceWithMaxAndMaxAttributes_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceWithMaxAndMaxAttributes_id" BIGINT CHECK ( "tServiceWithMaxAndMaxAttributes_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfReportControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfReportControl_id" BIGINT CHECK ( "ConfReportControl_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceConfReportControl" ( "tServiceConfReportControl_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceConfReportControl_id" BIGINT CHECK ( "tServiceConfReportControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ReportSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ReportSettings_id" BIGINT CHECK ( "ReportSettings_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tReportSettings" ( "tReportSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tReportSettings_id" BIGINT CHECK ( "tReportSettings_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "LogSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"LogSettings_id" BIGINT CHECK ( "LogSettings_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tLogSettings" ( "tLogSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tLogSettings_id" BIGINT CHECK ( "tLogSettings_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GSESettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GSESettings_id" BIGINT CHECK ( "GSESettings_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tGSESettings" ( "tGSESettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tGSESettings_id" BIGINT CHECK ( "tGSESettings_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SMVSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SMVSettings_id" BIGINT CHECK ( "SMVSettings_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tSMVSettings" ( "tSMVSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tSMVSettings_id" BIGINT CHECK ( "tSMVSettings_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GOOSE" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GOOSE_id" BIGINT CHECK ( "GOOSE_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tGOOSEcapabilities" ( "tGOOSEcapabilities_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tGOOSEcapabilities_id" BIGINT CHECK ( "tGOOSEcapabilities_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SMVsc" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SMVsc_id" BIGINT CHECK ( "SMVsc_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tSMVsc" ( "tSMVsc_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tSMVsc_id" BIGINT CHECK ( "tSMVsc_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "FileHandling" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"FileHandling_id" BIGINT CHECK ( "FileHandling_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tFileHandling" ( "tFileHandling_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tFileHandling_id" BIGINT CHECK ( "tFileHandling_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "TimeSyncProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"TimeSyncProt_id" BIGINT CHECK ( "TimeSyncProt_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tTimeSyncProt" ( "tTimeSyncProt_id" ), PARENT NODE : Services ClientServices, ANCESTOR NODE : AccessPoint Services
	"tTimeSyncProt_id" BIGINT CHECK ( "tTimeSyncProt_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "CommProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"CommProt_id" BIGINT CHECK ( "CommProt_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tCommProt" ( "tCommProt_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tCommProt_id" BIGINT CHECK ( "tCommProt_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServerAt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServerAt_id" BIGINT CHECK ( "tServerAt_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ServerAt" ( "ServerAt_id" )
	"ServerAt_id" BIGINT CHECK ( "ServerAt_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : ServerAt, ANCESTOR NODE : AccessPoint
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "apName" ( "apName_id", DELEGATED TO "tAccessPointName_id" ), PARENT NODE : ServerAt
	"apName_id" BIGINT CHECK ( "apName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tCertificate" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tCertificate_id" BIGINT CHECK ( "tCertificate_id" >= 0 ) ,
-- FOREIGN KEY : "GOOSESecurity" ( "GOOSESecurity_id" )
	"GOOSESecurity_id" BIGINT CHECK ( "GOOSESecurity_id" >= 0 ) ,
-- FOREIGN KEY : "SMVSecurity" ( "SMVSecurity_id" )
	"SMVSecurity_id" BIGINT CHECK ( "SMVSecurity_id" >= 0 ) ,
-- NESTED KEY : "tNaming" ( "tNaming_id" ), PARENT NODE : GOOSESecurity SMVSecurity
	"tNaming_id" BIGINT CHECK ( "tNaming_id" >= 0 ) ,
-- NESTED KEY : "Subject" ( "Subject_id", DELEGATED TO "tCert_id" ), PARENT NODE : GOOSESecurity SMVSecurity
	"Subject_id" BIGINT CHECK ( "Subject_id" >= 0 ) ,
-- NESTED KEY : "IssuerName" ( "IssuerName_id", DELEGATED TO "tCert_id" ), PARENT NODE : GOOSESecurity SMVSecurity
	"IssuerName_id" BIGINT CHECK ( "IssuerName_id" >= 0 ) ,
-- ATTRIBUTE
	"xferNumber" INTEGER CHECK ( "xferNumber" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minLength="1"
-- xs:restriction/xs:pattern="[0-9]+"
	"serialNumber" TEXT NOT NULL
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "AccessControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"AccessControl_id" BIGINT CHECK ( "AccessControl_id" >= 0 ) ,
-- NESTED KEY : "tAccessControl" ( "tAccessControl_id" ), PARENT NODE : LDevice, ANCESTOR NODE : Server
	"tAccessControl_id" BIGINT CHECK ( "tAccessControl_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE inst (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	inst_id BIGINT CHECK ( inst_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLDInst" ( "tLDInst_id" ), PARENT NODE : LDevice
	"tLDInst_id" BIGINT CHECK ( "tLDInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLNInst" ( "tLNInst_id" ), PARENT NODE : LN
	"tLNInst_id" BIGINT CHECK ( "tLNInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDataSet" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDataSet_id" BIGINT CHECK ( "tDataSet_id" >= 0 ) ,
-- FOREIGN KEY : "DataSet" ( "DataSet_id" )
	"DataSet_id" BIGINT CHECK ( "DataSet_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : DataSet, ANCESTOR NODE : LN
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "FCDA" ( "FCDA_id", DELEGATED TO "tFCDA_id" ), PARENT NODE : DataSet, ANCESTOR NODE : LN
	"FCDA_id" BIGINT CHECK ( "FCDA_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tDataSetName_id" ), PARENT NODE : DataSet
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDOI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDOI_id" BIGINT CHECK ( "tDOI_id" >= 0 ) ,
-- FOREIGN KEY : "DOI" ( "DOI_id" )
	"DOI_id" BIGINT CHECK ( "DOI_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : DOI, ANCESTOR NODE : LN
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "SDI" ( "SDI_id", DELEGATED TO "tSDI_id" ), PARENT NODE : DOI, ANCESTOR NODE : LN
	"SDI_id" BIGINT CHECK ( "SDI_id" >= 0 ) ,
-- NESTED KEY : "DAI" ( "DAI_id", DELEGATED TO "tDAI_id" ), PARENT NODE : DOI, ANCESTOR NODE : LN
	"DAI_id" BIGINT CHECK ( "DAI_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tDataName_id" ), PARENT NODE : DOI
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	ix INTEGER CHECK ( ix >= 0 ) ,
-- ATTRIBUTE
	"accessControl" TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tInputs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tInputs_id" BIGINT CHECK ( "tInputs_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Inputs" ( "Inputs_id" )
	"Inputs_id" BIGINT CHECK ( "Inputs_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : Inputs, ANCESTOR NODE : LN
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "ExtRef" ( "ExtRef_id", DELEGATED TO "tExtRef_id" ), PARENT NODE : Inputs, ANCESTOR NODE : LN
	"ExtRef_id" BIGINT CHECK ( "ExtRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLog" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLog_id" BIGINT CHECK ( "tLog_id" >= 0 ) ,
-- FOREIGN KEY : "Log" ( "Log_id" )
	"Log_id" BIGINT CHECK ( "Log_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : Log, ANCESTOR NODE : LN
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tLogName_id" ), PARENT NODE : Log
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tAnyLN" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAnyLN_id" BIGINT CHECK ( "tAnyLN_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : LN
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "DataSet" ( "DataSet_id", DELEGATED TO "tDataSet_id" ), PARENT NODE : LN
	"DataSet_id" BIGINT CHECK ( "DataSet_id" >= 0 ) ,
-- NESTED KEY : "ReportControl" ( "ReportControl_id", DELEGATED TO "tReportControl_id" ), PARENT NODE : LN
	"ReportControl_id" BIGINT CHECK ( "ReportControl_id" >= 0 ) ,
-- NESTED KEY : "LogControl" ( "LogControl_id", DELEGATED TO "tLogControl_id" ), PARENT NODE : LN
	"LogControl_id" BIGINT CHECK ( "LogControl_id" >= 0 ) ,
-- NESTED KEY : "DOI" ( "DOI_id", DELEGATED TO "tDOI_id" ), PARENT NODE : LN
	"DOI_id" BIGINT CHECK ( "DOI_id" >= 0 ) ,
-- NESTED KEY : "Inputs" ( "Inputs_id", DELEGATED TO "tInputs_id" ), PARENT NODE : LN
	"Inputs_id" BIGINT CHECK ( "Inputs_id" >= 0 ) ,
-- NESTED KEY : "Log" ( "Log_id", DELEGATED TO "tLog_id" ), PARENT NODE : LN
	"Log_id" BIGINT CHECK ( "Log_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnType" ( "lnType_id", DELEGATED TO "tName_id" ), PARENT NODE : LN
	"lnType_id" BIGINT CHECK ( "lnType_id" >= 0 ) ,
-- FOREIGN KEY : "tLN" ( "tLN_id" )
	"tLN_id" BIGINT CHECK ( "tLN_id" >= 0 ) CONSTRAINT FK_tAnyLN_tLN REFERENCES "tLN" ( "tLN_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tLN0" ( "tLN0_id" )
	"tLN0_id" BIGINT CHECK ( "tLN0_id" >= 0 ) CONSTRAINT FK_tAnyLN_tLN0 REFERENCES "tLN0" ( "tLN0_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tSettingControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSettingControl_id" BIGINT CHECK ( "tSettingControl_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "SettingControl" ( "SettingControl_id" )
	"SettingControl_id" BIGINT CHECK ( "SettingControl_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : SettingControl, ANCESTOR NODE : LN0
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minInclusive="1"
	"numOfSGs" INTEGER CHECK ( "numOfSGs" >= 1 ) NOT NULL ,
-- ATTRIBUTE
-- @default="1"
-- xs:restriction/xs:minInclusive="1"
	"actSG" INTEGER CHECK ( "actSG" >= 1 ) ,
-- ATTRIBUTE
	"resvTms" SMALLINT CHECK ( "resvTms" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tControl_id" BIGINT CHECK ( "tControl_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tCBName_id" )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "datSet" ( "datSet_id", DELEGATED TO "tDataSetName_id" )
	"datSet_id" BIGINT CHECK ( "datSet_id" >= 0 ) ,
-- FOREIGN KEY : "tControlWithTriggerOpt" ( "tControlWithTriggerOpt_id" )
	"tControlWithTriggerOpt_id" BIGINT CHECK ( "tControlWithTriggerOpt_id" >= 0 ) CONSTRAINT FK_tControl_tControlWithTriggerOpt REFERENCES "tControlWithTriggerOpt" ( "tControlWithTriggerOpt_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tControlWithIEDName" ( "tControlWithIEDName_id" )
	"tControlWithIEDName_id" BIGINT CHECK ( "tControlWithIEDName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tRptEnabled" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRptEnabled_id" BIGINT CHECK ( "tRptEnabled_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "RptEnabled" ( "RptEnabled_id" )
	"RptEnabled_id" BIGINT CHECK ( "RptEnabled_id" >= 0 ) CONSTRAINT FK_tRptEnabled_RptEnabled REFERENCES "RptEnabled" ( "RptEnabled_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : RptEnabled, ANCESTOR NODE : ReportControl
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "ClientLN" ( "ClientLN_id", DELEGATED TO "tClientLN_id" ), PARENT NODE : RptEnabled, ANCESTOR NODE : ReportControl
	"ClientLN_id" BIGINT CHECK ( "ClientLN_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="1"
	max INTEGER CHECK ( max >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "logName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"logName_id" BIGINT CHECK ( "logName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tLogName" ( "tLogName_id" ), PARENT NODE : LogControl
	"tLogName_id" BIGINT CHECK ( "tLogName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "srcCBName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"srcCBName_id" BIGINT CHECK ( "srcCBName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tCBName" ( "tCBName_id" ), PARENT NODE : ExtRef
	"tCBName_id" BIGINT CHECK ( "tCBName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: false, virtual: false
--
CREATE TABLE "IEDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"IEDName_id" BIGINT CHECK ( "IEDName_id" >= 0 ) ,
-- NESTED KEY : "tIEDName" ( "tIEDName_id" )
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "apRef" ( "apRef_id", DELEGATED TO "tAccessPointName_id" )
	"apRef_id" BIGINT CHECK ( "apRef_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" )
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" )
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInst_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "smvID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"smvID_id" BIGINT CHECK ( "smvID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tMessageID" ( "tMessageID_id" ), PARENT NODE : SampledValueControl
	"tMessageID_id" BIGINT CHECK ( "tMessageID_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tSDI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSDI_id" BIGINT CHECK ( "tSDI_id" >= 0 ) ,
-- FOREIGN KEY : "SDI" ( "SDI_id" )
	"SDI_id" BIGINT CHECK ( "SDI_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "SDI" ( "SDI_id", DELEGATED TO "tSDI_id" )
	"_SDI_id" BIGINT CHECK ( "_SDI_id" >= 0 ) ,
-- NESTED KEY : "DAI" ( "DAI_id", DELEGATED TO "tDAI_id" )
	"DAI_id" BIGINT CHECK ( "DAI_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tAttributeNameEnum_id" )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	ix INTEGER CHECK ( ix >= 0 ) ,
-- ATTRIBUTE
	"sAddr" TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDAI" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDAI_id" BIGINT CHECK ( "tDAI_id" >= 0 ) ,
-- FOREIGN KEY : "DAI" ( "DAI_id" )
	"DAI_id" BIGINT CHECK ( "DAI_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : DAI, ANCESTOR NODE : DOI SDI
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "Val" ( "Val_id", DELEGATED TO "tVal_id" ), PARENT NODE : DAI, ANCESTOR NODE : DOI SDI
	"Val_id" BIGINT CHECK ( "Val_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tAttributeNameEnum_id" ), PARENT NODE : DAI
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	"sAddr" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "valKind" ( "valKind_id", DELEGATED TO "tValKindEnum_id" ), PARENT NODE : DAI
	"valKind_id" BIGINT CHECK ( "valKind_id" >= 0 ) ,
-- ATTRIBUTE
	ix INTEGER CHECK ( ix >= 0 ) ,
-- ATTRIBUTE
	"valImport" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "bType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"bType_id" BIGINT CHECK ( "bType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tBasicTypeEnum" ( "tBasicTypeEnum_id" )
	"tBasicTypeEnum_id" BIGINT CHECK ( "tBasicTypeEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE count (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	count_id BIGINT CHECK ( count_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tDACount" ( "tDACount_id" )
	"tDACount_id" BIGINT CHECK ( "tDACount_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tSDOCount" ( "tSDOCount_id" ), PARENT NODE : SDO
	"tSDOCount_id" BIGINT CHECK ( "tSDOCount_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tAbstractDataAttribute" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAbstractDataAttribute_id" BIGINT CHECK ( "tAbstractDataAttribute_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "Val" ( "Val_id", DELEGATED TO "tVal_id" )
	"Val_id" BIGINT CHECK ( "Val_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tAttributeNameEnum_id" )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	"sAddr" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "bType" ( "bType_id", DELEGATED TO "tBasicTypeEnum_id" )
	"bType_id" BIGINT CHECK ( "bType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "valKind" ( "valKind_id", DELEGATED TO "tValKindEnum_id" )
	"valKind_id" BIGINT CHECK ( "valKind_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tAnyName_id" )
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : count ( count_id, DELEGATED TO "tDACount_id" )
	count_id BIGINT CHECK ( count_id >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"valImport" BOOLEAN ,
-- FOREIGN KEY : "tDA" ( "tDA_id" )
	"tDA_id" BIGINT CHECK ( "tDA_id" >= 0 ) ,
-- FOREIGN KEY : "tBDA" ( "tBDA_id" )
	"tBDA_id" BIGINT CHECK ( "tBDA_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tDO" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDO_id" BIGINT CHECK ( "tDO_id" >= 0 ) ,
-- FOREIGN KEY : "DO" ( "DO_id" )
	"DO_id" BIGINT CHECK ( "DO_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : DO, ANCESTOR NODE : LNodeType
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tDataName_id" ), PARENT NODE : DO
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tName_id" ), PARENT NODE : DO
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- ATTRIBUTE
	"accessControl" TEXT ,
-- ATTRIBUTE
-- @default="false"
	transient BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLNodeType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLNodeType_id" BIGINT CHECK ( "tLNodeType_id" >= 0 ) ,
-- NESTED KEY : "tIDNaming" ( "tIDNaming_id" ), PARENT NODE : LNodeType, ANCESTOR NODE : DataTypeTemplates
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- NESTED KEY : "DO" ( "DO_id", DELEGATED TO "tDO_id" ), PARENT NODE : LNodeType, ANCESTOR NODE : DataTypeTemplates
	"DO_id" BIGINT CHECK ( "DO_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "iedType" ( "iedType_id", DELEGATED TO "tAnyName_id" ), PARENT NODE : LNodeType
	"iedType_id" BIGINT CHECK ( "iedType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : LNodeType
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- FOREIGN KEY : "LNodeType" ( "LNodeType_id" )
	"LNodeType_id" BIGINT CHECK ( "LNodeType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSDO" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSDO_id" BIGINT CHECK ( "tSDO_id" >= 0 ) ,
-- FOREIGN KEY : "SDO" ( "SDO_id" )
	"SDO_id" BIGINT CHECK ( "SDO_id" >= 0 ) ,
-- NESTED KEY : "tUnNaming" ( "tUnNaming_id" ), PARENT NODE : SDO, ANCESTOR NODE : DOType
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tSubDataName_id" ), PARENT NODE : SDO
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tName_id" ), PARENT NODE : SDO
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : count ( count_id, DELEGATED TO "tSDOCount_id" ), PARENT NODE : SDO
	count_id BIGINT CHECK ( count_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE cdc (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	cdc_id BIGINT CHECK ( cdc_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tCDCEnum" ( "tCDCEnum_id" ), PARENT NODE : DOType
	"tCDCEnum_id" BIGINT CHECK ( "tCDCEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDOType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDOType_id" BIGINT CHECK ( "tDOType_id" >= 0 ) ,
-- NESTED KEY : "tIDNaming" ( "tIDNaming_id" ), PARENT NODE : DOType, ANCESTOR NODE : DataTypeTemplates
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- NESTED KEY : "SDO" ( "SDO_id", DELEGATED TO "tSDO_id" ), PARENT NODE : DOType, ANCESTOR NODE : DataTypeTemplates
	"SDO_id" BIGINT CHECK ( "SDO_id" >= 0 ) ,
-- NESTED KEY : "DA" ( "DA_id", DELEGATED TO "tDA_id" ), PARENT NODE : DOType, ANCESTOR NODE : DataTypeTemplates
	"DA_id" BIGINT CHECK ( "DA_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "iedType" ( "iedType_id", DELEGATED TO "tAnyName_id" ), PARENT NODE : DOType
	"iedType_id" BIGINT CHECK ( "iedType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : cdc ( cdc_id, DELEGATED TO "tCDCEnum_id" ), PARENT NODE : DOType
	cdc_id BIGINT CHECK ( cdc_id >= 0 ) ,
-- FOREIGN KEY : "DOType" ( "DOType_id" )
	"DOType_id" BIGINT CHECK ( "DOType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ProtNs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ProtNs_id" BIGINT CHECK ( "ProtNs_id" >= 0 ) ,
-- NESTED KEY : "tProtNs" ( "tProtNs_id" ), PARENT NODE : DA DAType, ANCESTOR NODE : DOType DataTypeTemplates
	"tProtNs_id" BIGINT CHECK ( "tProtNs_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDAType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tDAType_id" BIGINT CHECK ( "tDAType_id" >= 0 ) ,
-- NESTED KEY : "tIDNaming" ( "tIDNaming_id" ), PARENT NODE : DAType, ANCESTOR NODE : DataTypeTemplates
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- NESTED KEY : "BDA" ( "BDA_id", DELEGATED TO "tBDA_id" ), PARENT NODE : DAType, ANCESTOR NODE : DataTypeTemplates
	"BDA_id" BIGINT CHECK ( "BDA_id" >= 0 ) ,
-- NESTED KEY : "ProtNs" ( "ProtNs_id", DELEGATED TO "tProtNs_id" ), PARENT NODE : DAType, ANCESTOR NODE : DataTypeTemplates
	"ProtNs_id" BIGINT CHECK ( "ProtNs_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "iedType" ( "iedType_id", DELEGATED TO "tAnyName_id" ), PARENT NODE : DAType
	"iedType_id" BIGINT CHECK ( "iedType_id" >= 0 ) ,
-- FOREIGN KEY : "DAType" ( "DAType_id" )
	"DAType_id" BIGINT CHECK ( "DAType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tEnumType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEnumType_id" BIGINT CHECK ( "tEnumType_id" >= 0 ) ,
-- NESTED KEY : "tIDNaming" ( "tIDNaming_id" ), PARENT NODE : EnumType, ANCESTOR NODE : DataTypeTemplates
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- NESTED KEY : "EnumVal" ( "EnumVal_id", DELEGATED TO "tEnumVal_id" ), PARENT NODE : EnumType, ANCESTOR NODE : DataTypeTemplates
	"EnumVal_id" BIGINT CHECK ( "EnumVal_id" >= 0 ) ,
-- FOREIGN KEY : "EnumType" ( "EnumType_id" )
	"EnumType_id" BIGINT CHECK ( "EnumType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL.xsd
-- type: root child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Header" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"Header_id" BIGINT CHECK ( "Header_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tHeader" ( "tHeader_id" )
	"tHeader_id" BIGINT CHECK ( "tHeader_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_BaseTypes.xsd SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAnyName" ( "tAnyName_id" ), PARENT NODE : name id lnType substationName voltageLevelName bayName cNodeName type
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) ,
-- FOREIGN KEY : "tSclVersion" ( "tSclVersion_id" )
	"tSclVersion_id" BIGINT CHECK ( "tSclVersion_id" >= 0 ) CONSTRAINT FK_tName_tSclVersion REFERENCES "tSclVersion" ( "tSclVersion_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : id ( id_id )
	id_id BIGINT CHECK ( id_id >= 0 ) CONSTRAINT FK_tName_id REFERENCES id ( id_id ) ON DELETE CASCADE ,
-- FOREIGN KEY : "lnType" ( "lnType_id" )
	"lnType_id" BIGINT CHECK ( "lnType_id" >= 0 ) ,
-- FOREIGN KEY : "substationName" ( "substationName_id" )
	"substationName_id" BIGINT CHECK ( "substationName_id" >= 0 ) CONSTRAINT FK_tName_substationName REFERENCES "substationName" ( "substationName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "voltageLevelName" ( "voltageLevelName_id" )
	"voltageLevelName_id" BIGINT CHECK ( "voltageLevelName_id" >= 0 ) CONSTRAINT FK_tName_voltageLevelName REFERENCES "voltageLevelName" ( "voltageLevelName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "bayName" ( "bayName_id" )
	"bayName_id" BIGINT CHECK ( "bayName_id" >= 0 ) CONSTRAINT FK_tName_bayName REFERENCES "bayName" ( "bayName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "cNodeName" ( "cNodeName_id" )
	"cNodeName_id" BIGINT CHECK ( "cNodeName_id" >= 0 ) CONSTRAINT FK_tName_cNodeName REFERENCES "cNodeName" ( "cNodeName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tIEDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) ,
-- NESTED KEY : "tAcsiName" ( "tAcsiName_id" ), PARENT NODE : iedName name IEDName
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) ,
-- FOREIGN KEY : "iedName" ( "iedName_id" )
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) CONSTRAINT FK_tIEDName_iedName REFERENCES "iedName" ( "iedName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : "IEDName" ( "IEDName_id" )
	"IEDName_id" BIGINT CHECK ( "IEDName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tDataName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDataName_id" BIGINT CHECK ( "tDataName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tRestrName1stU" ( "tRestrName1stU_id" ), PARENT NODE : name, ANCESTOR NODE : DOI
	"tRestrName1stU_id" BIGINT CHECK ( "tRestrName1stU_id" >= 0 ) ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tDataSetName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDataSetName_id" BIGINT CHECK ( "tDataSetName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAcsiName" ( "tAcsiName_id" ), PARENT NODE : name datSet
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : "datSet" ( "datSet_id" )
	"datSet_id" BIGINT CHECK ( "datSet_id" >= 0 ) CONSTRAINT FK_tDataSetName_datSet REFERENCES "datSet" ( "datSet_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tCBName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCBName_id" BIGINT CHECK ( "tCBName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAcsiName" ( "tAcsiName_id" ), PARENT NODE : name srcCBName
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : "srcCBName" ( "srcCBName_id" )
	"srcCBName_id" BIGINT CHECK ( "srcCBName_id" >= 0 ) CONSTRAINT FK_tCBName_srcCBName REFERENCES "srcCBName" ( "srcCBName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tLogName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLogName_id" BIGINT CHECK ( "tLogName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAcsiName" ( "tAcsiName_id" ), PARENT NODE : logName name
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) ,
-- FOREIGN KEY : "logName" ( "logName_id" )
	"logName_id" BIGINT CHECK ( "logName_id" >= 0 ) CONSTRAINT FK_tLogName_logName REFERENCES "logName" ( "logName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tMessageID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tMessageID_id" BIGINT CHECK ( "tMessageID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tVisibleBasicLatin" ( "tVisibleBasicLatin_id" ), PARENT NODE : rptID appID smvID
	"tVisibleBasicLatin_id" BIGINT CHECK ( "tVisibleBasicLatin_id" >= 0 ) ,
-- FOREIGN KEY : "rptID" ( "rptID_id" )
	"rptID_id" BIGINT CHECK ( "rptID_id" >= 0 ) CONSTRAINT FK_tMessageID_rptID REFERENCES "rptID" ( "rptID_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "appID" ( "appID_id" )
	"appID_id" BIGINT CHECK ( "appID_id" >= 0 ) CONSTRAINT FK_tMessageID_appID REFERENCES "appID" ( "appID_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "smvID" ( "smvID_id" )
	"smvID_id" BIGINT CHECK ( "smvID_id" >= 0 ) CONSTRAINT FK_tMessageID_smvID REFERENCES "smvID" ( "smvID_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tSubDataName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSubDataName_id" BIGINT CHECK ( "tSubDataName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tRestrName1stL" ( "tRestrName1stL_id" ), PARENT NODE : name, ANCESTOR NODE : SDO
	"tRestrName1stL_id" BIGINT CHECK ( "tRestrName1stL_id" >= 0 ) ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tExtensionAttributeNameEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionAttributeNameEnum_id" BIGINT CHECK ( "tExtensionAttributeNameEnum_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tRestrName1stL" ( "tRestrName1stL_id" )
	"tRestrName1stL_id" BIGINT CHECK ( "tRestrName1stL_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tCDCEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCDCEnum_id" BIGINT CHECK ( "tCDCEnum_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tPredefinedCDCEnum" ( "tPredefinedCDCEnum_id" ), PARENT NODE : cdc, ANCESTOR NODE : DOType
	"tPredefinedCDCEnum_id" BIGINT CHECK ( "tPredefinedCDCEnum_id" >= 0 ) ,
-- FOREIGN KEY : cdc ( cdc_id )
	cdc_id BIGINT CHECK ( cdc_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tBasicTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tBasicTypeEnum_id" BIGINT CHECK ( "tBasicTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tPredefinedBasicTypeEnum" ( "tPredefinedBasicTypeEnum_id" ), PARENT NODE : bType
	"tPredefinedBasicTypeEnum_id" BIGINT CHECK ( "tPredefinedBasicTypeEnum_id" >= 0 ) ,
-- FOREIGN KEY : "bType" ( "bType_id" )
	"bType_id" BIGINT CHECK ( "bType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tText" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tText_id" BIGINT CHECK ( "tText_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Text" ( "Text_id" )
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : Text, ANCESTOR NODE : SCL Header
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 ) ,
-- ATTRIBUTE
	source TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPrivate" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tPrivate_id" BIGINT CHECK ( "tPrivate_id" >= 0 ) ,
-- FOREIGN KEY : "Private" ( "Private_id" )
	"Private_id" BIGINT CHECK ( "Private_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : Private, ANCESTOR NODE : SCL
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minLength="1"
	type TEXT NOT NULL ,
-- ATTRIBUTE
	source TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tUnNaming" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- FOREIGN KEY : "tLNode" ( "tLNode_id" )
	"tLNode_id" BIGINT CHECK ( "tLNode_id" >= 0 ) ,
-- FOREIGN KEY : "tTerminal" ( "tTerminal_id" )
	"tTerminal_id" BIGINT CHECK ( "tTerminal_id" >= 0 ) ,
-- FOREIGN KEY : "tIED" ( "tIED_id" )
	"tIED_id" BIGINT CHECK ( "tIED_id" >= 0 ) CONSTRAINT FK_tUnNaming_tIED REFERENCES "tIED" ( "tIED_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tAccessPoint" ( "tAccessPoint_id" )
	"tAccessPoint_id" BIGINT CHECK ( "tAccessPoint_id" >= 0 ) ,
-- FOREIGN KEY : "tServerAt" ( "tServerAt_id" )
	"tServerAt_id" BIGINT CHECK ( "tServerAt_id" >= 0 ) CONSTRAINT FK_tUnNaming_tServerAt REFERENCES "tServerAt" ( "tServerAt_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tServer" ( "tServer_id" )
	"tServer_id" BIGINT CHECK ( "tServer_id" >= 0 ) CONSTRAINT FK_tUnNaming_tServer REFERENCES "tServer" ( "tServer_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tLDevice" ( "tLDevice_id" )
	"tLDevice_id" BIGINT CHECK ( "tLDevice_id" >= 0 ) ,
-- FOREIGN KEY : "tAnyLN" ( "tAnyLN_id" )
	"tAnyLN_id" BIGINT CHECK ( "tAnyLN_id" >= 0 ) ,
-- FOREIGN KEY : "tDataSet" ( "tDataSet_id" )
	"tDataSet_id" BIGINT CHECK ( "tDataSet_id" >= 0 ) ,
-- FOREIGN KEY : "tControl" ( "tControl_id" )
	"tControl_id" BIGINT CHECK ( "tControl_id" >= 0 ) ,
-- FOREIGN KEY : "tRptEnabled" ( "tRptEnabled_id" )
	"tRptEnabled_id" BIGINT CHECK ( "tRptEnabled_id" >= 0 ) CONSTRAINT FK_tUnNaming_tRptEnabled REFERENCES "tRptEnabled" ( "tRptEnabled_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tInputs" ( "tInputs_id" )
	"tInputs_id" BIGINT CHECK ( "tInputs_id" >= 0 ) CONSTRAINT FK_tUnNaming_tInputs REFERENCES "tInputs" ( "tInputs_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tLog" ( "tLog_id" )
	"tLog_id" BIGINT CHECK ( "tLog_id" >= 0 ) ,
-- FOREIGN KEY : "tSettingControl" ( "tSettingControl_id" )
	"tSettingControl_id" BIGINT CHECK ( "tSettingControl_id" >= 0 ) CONSTRAINT FK_tUnNaming_tSettingControl REFERENCES "tSettingControl" ( "tSettingControl_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tDOI" ( "tDOI_id" )
	"tDOI_id" BIGINT CHECK ( "tDOI_id" >= 0 ) ,
-- FOREIGN KEY : "tSDI" ( "tSDI_id" )
	"tSDI_id" BIGINT CHECK ( "tSDI_id" >= 0 ) ,
-- FOREIGN KEY : "tDAI" ( "tDAI_id" )
	"tDAI_id" BIGINT CHECK ( "tDAI_id" >= 0 ) ,
-- FOREIGN KEY : "tAbstractDataAttribute" ( "tAbstractDataAttribute_id" )
	"tAbstractDataAttribute_id" BIGINT CHECK ( "tAbstractDataAttribute_id" >= 0 ) ,
-- FOREIGN KEY : "tDO" ( "tDO_id" )
	"tDO_id" BIGINT CHECK ( "tDO_id" >= 0 ) ,
-- FOREIGN KEY : "tSDO" ( "tSDO_id" )
	"tSDO_id" BIGINT CHECK ( "tSDO_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tNaming" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tNaming_id" BIGINT CHECK ( "tNaming_id" >= 0 ) ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : name ( name_id, DELEGATED TO "tName_id" )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- FOREIGN KEY : "tLNodeContainer" ( "tLNodeContainer_id" )
	"tLNodeContainer_id" BIGINT CHECK ( "tLNodeContainer_id" >= 0 ) ,
-- FOREIGN KEY : "tCertificate" ( "tCertificate_id" )
	"tCertificate_id" BIGINT CHECK ( "tCertificate_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tIDNaming" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : id ( id_id, DELEGATED TO "tName_id" )
	id_id BIGINT CHECK ( id_id >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- FOREIGN KEY : "tLNodeType" ( "tLNodeType_id" )
	"tLNodeType_id" BIGINT CHECK ( "tLNodeType_id" >= 0 ) ,
-- FOREIGN KEY : "tDOType" ( "tDOType_id" )
	"tDOType_id" BIGINT CHECK ( "tDOType_id" >= 0 ) ,
-- FOREIGN KEY : "tDAType" ( "tDAType_id" )
	"tDAType_id" BIGINT CHECK ( "tDAType_id" >= 0 ) ,
-- FOREIGN KEY : "tEnumType" ( "tEnumType_id" )
	"tEnumType_id" BIGINT CHECK ( "tEnumType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tHitem" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tHitem_id" BIGINT CHECK ( "tHitem_id" >= 0 ) ,
-- FOREIGN KEY : "Hitem" ( "Hitem_id" )
	"Hitem_id" BIGINT CHECK ( "Hitem_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : Hitem
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 ) ,
-- ATTRIBUTE
	version TEXT NOT NULL ,
-- ATTRIBUTE
	revision TEXT NOT NULL ,
-- ATTRIBUTE
	"when" TEXT NOT NULL ,
-- ATTRIBUTE
	who TEXT ,
-- ATTRIBUTE
	what TEXT ,
-- ATTRIBUTE
	why TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tHeader_nameStructure CASCADE;
CREATE TYPE ENUM_tHeader_nameStructure AS ENUM ( 'IEDName' );
CREATE TABLE "tHeader" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tHeader_id" BIGINT CHECK ( "tHeader_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "Text" ( "Text_id", DELEGATED TO "tText_id" ), PARENT NODE : Header
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- NESTED KEY : "History" ( "History_id" ), PARENT NODE : Header
	"History_id" BIGINT CHECK ( "History_id" >= 0 ) ,
-- ATTRIBUTE
	id TEXT NOT NULL ,
-- ATTRIBUTE
	version TEXT ,
-- ATTRIBUTE
	revision TEXT ,
-- ATTRIBUTE
	"toolID" TEXT ,
-- ATTRIBUTE
-- @default="IEDName"
	"nameStructure" ENUM_tHeader_nameStructure ,
-- FOREIGN KEY : "Header" ( "Header_id" )
	"Header_id" BIGINT CHECK ( "Header_id" >= 0 ) CONSTRAINT FK_tHeader_Header REFERENCES "Header" ( "Header_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE multiplier (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	"tUnitMultiplierEnum_id" BIGINT CHECK ( "tUnitMultiplierEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tVoltage" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tVoltage_id" BIGINT CHECK ( "tVoltage_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tValueWithUnit" ( "tValueWithUnit_id" ), PARENT NODE : Voltage, ANCESTOR NODE : VoltageLevel
	"tValueWithUnit_id" BIGINT CHECK ( "tValueWithUnit_id" >= 0 ) ,
-- ATTRIBUTE
	unit TEXT CHECK ( unit = 'V' ) NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : multiplier ( multiplier_id, DELEGATED TO "tUnitMultiplierEnum_id" ), PARENT NODE : Voltage
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 ) ,
-- FOREIGN KEY : "Voltage" ( "Voltage_id" )
	"Voltage_id" BIGINT CHECK ( "Voltage_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tDurationInSec" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDurationInSec_id" BIGINT CHECK ( "tDurationInSec_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tValueWithUnit" ( "tValueWithUnit_id" )
	"tValueWithUnit_id" BIGINT CHECK ( "tValueWithUnit_id" >= 0 ) ,
-- ATTRIBUTE
	unit TEXT CHECK ( unit = 's' ) NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : multiplier ( multiplier_id, DELEGATED TO "tUnitMultiplierEnum_id" )
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE phase (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	phase_id BIGINT CHECK ( phase_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tPhaseEnum" ( "tPhaseEnum_id" ), PARENT NODE : SubEquipment
	"tPhaseEnum_id" BIGINT CHECK ( "tPhaseEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE prefix (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tPrefix" ( "tPrefix_id" ), PARENT NODE : LNode LN FCDA LogControl ExtRef
	"tPrefix_id" BIGINT CHECK ( "tPrefix_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "lnClass" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLNClassEnum" ( "tLNClassEnum_id" ), PARENT NODE : LNode LN LN0 FCDA LogControl ExtRef LNodeType
	"tLNClassEnum_id" BIGINT CHECK ( "tLNClassEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "pathName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"pathName_id" BIGINT CHECK ( "pathName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tRef" ( "tRef_id" ), PARENT NODE : ConnectivityNode
	"tRef_id" BIGINT CHECK ( "tRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "connectivityNode" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"connectivityNode_id" BIGINT CHECK ( "connectivityNode_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tRef" ( "tRef_id" ), PARENT NODE : Terminal NeutralPoint
	"tRef_id" BIGINT CHECK ( "tRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "processName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"processName_id" BIGINT CHECK ( "processName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tProcessName" ( "tProcessName_id" ), PARENT NODE : Terminal NeutralPoint
	"tProcessName_id" BIGINT CHECK ( "tProcessName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Services" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Services_id" BIGINT CHECK ( "Services_id" >= 0 ) ,
-- NESTED KEY : "tServices" ( "tServices_id" ), PARENT NODE : AccessPoint
	"tServices_id" BIGINT CHECK ( "tServices_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "KDC" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"KDC_id" BIGINT CHECK ( "KDC_id" >= 0 ) ,
-- NESTED KEY : "tKDC" ( "tKDC_id" )
	"tKDC_id" BIGINT CHECK ( "tKDC_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "originalSclRevision" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"originalSclRevision_id" BIGINT CHECK ( "originalSclRevision_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tSclRevision" ( "tSclRevision_id" )
	"tSclRevision_id" BIGINT CHECK ( "tSclRevision_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "engRight" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"engRight_id" BIGINT CHECK ( "engRight_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tRightEnum" ( "tRightEnum_id" )
	"tRightEnum_id" BIGINT CHECK ( "tRightEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "DynAssociation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"DynAssociation_id" BIGINT CHECK ( "DynAssociation_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tServiceWithOptionalMax" ( "tServiceWithOptionalMax_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceWithOptionalMax_id" BIGINT CHECK ( "tServiceWithOptionalMax_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SettingGroups" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SettingGroups_id" BIGINT CHECK ( "SettingGroups_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tSettingGroups" ( "tSettingGroups_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tSettingGroups_id" BIGINT CHECK ( "tSettingGroups_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GetDirectory" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GetDirectory_id" BIGINT CHECK ( "GetDirectory_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GetDataObjectDefinition" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GetDataObjectDefinition_id" BIGINT CHECK ( "GetDataObjectDefinition_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "DataObjectDirectory" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"DataObjectDirectory_id" BIGINT CHECK ( "DataObjectDirectory_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GetDataSetValue" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GetDataSetValue_id" BIGINT CHECK ( "GetDataSetValue_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SetDataSetValue" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SetDataSetValue_id" BIGINT CHECK ( "SetDataSetValue_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "DataSetDirectory" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"DataSetDirectory_id" BIGINT CHECK ( "DataSetDirectory_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tServiceWithMaxAndMaxAttributes" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceWithMaxAndMaxAttributes_id" BIGINT CHECK ( "tServiceWithMaxAndMaxAttributes_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "DynDataSet" ( "DynDataSet_id" )
	"DynDataSet_id" BIGINT CHECK ( "DynDataSet_id" >= 0 ) CONSTRAINT FK_tServiceWithMaxAndMaxAttributes_DynDataSet REFERENCES "DynDataSet" ( "DynDataSet_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" ), PARENT NODE : DynDataSet, ANCESTOR NODE : Services
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minExclusive="0"
	"maxAttributes" INTEGER CHECK ( "maxAttributes" > 0 ) ,
-- FOREIGN KEY : "tServiceForConfDataSet" ( "tServiceForConfDataSet_id" )
	"tServiceForConfDataSet_id" BIGINT CHECK ( "tServiceForConfDataSet_id" >= 0 ) CONSTRAINT FK_tServiceWithMaxAndMaxAttributes_tServiceForConfDataSet REFERENCES "tServiceForConfDataSet" ( "tServiceForConfDataSet_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ReadWrite" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ReadWrite_id" BIGINT CHECK ( "ReadWrite_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "TimerActivatedControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"TimerActivatedControl_id" BIGINT CHECK ( "TimerActivatedControl_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
DROP TYPE IF EXISTS ENUM_tServiceConfReportControl_bufMode CASCADE;
CREATE TYPE ENUM_tServiceConfReportControl_bufMode AS ENUM ( 'unbuffered', 'buffered', 'both' );
CREATE TABLE "tServiceConfReportControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceConfReportControl_id" BIGINT CHECK ( "tServiceConfReportControl_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ConfReportControl" ( "ConfReportControl_id" )
	"ConfReportControl_id" BIGINT CHECK ( "ConfReportControl_id" >= 0 ) CONSTRAINT FK_tServiceConfReportControl_ConfReportControl REFERENCES "ConfReportControl" ( "ConfReportControl_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" ), PARENT NODE : ConfReportControl, ANCESTOR NODE : Services
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) ,
-- ATTRIBUTE
	"bufMode" ENUM_tServiceConfReportControl_bufMode ,
-- ATTRIBUTE
-- @default="false"
	"bufConf" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GetCBValues" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GetCBValues_id" BIGINT CHECK ( "GetCBValues_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfLogControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfLogControl_id" BIGINT CHECK ( "ConfLogControl_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceWithMaxNonZero" ( "tServiceWithMaxNonZero_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceWithMaxNonZero_id" BIGINT CHECK ( "tServiceWithMaxNonZero_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tReportSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tReportSettings_id" BIGINT CHECK ( "tReportSettings_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ReportSettings" ( "ReportSettings_id" )
	"ReportSettings_id" BIGINT CHECK ( "ReportSettings_id" >= 0 ) CONSTRAINT FK_tReportSettings_ReportSettings REFERENCES "ReportSettings" ( "ReportSettings_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceSettings" ( "tServiceSettings_id" ), PARENT NODE : ReportSettings, ANCESTOR NODE : Services
	"tServiceSettings_id" BIGINT CHECK ( "tServiceSettings_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "rptID" ( "rptID_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"rptID_id" BIGINT CHECK ( "rptID_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "optFields" ( "optFields_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"optFields_id" BIGINT CHECK ( "optFields_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "bufTime" ( "bufTime_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"bufTime_id" BIGINT CHECK ( "bufTime_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "trgOps" ( "trgOps_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"trgOps_id" BIGINT CHECK ( "trgOps_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "intgPd" ( "intgPd_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"intgPd_id" BIGINT CHECK ( "intgPd_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"resvTms" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	owner BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLogSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLogSettings_id" BIGINT CHECK ( "tLogSettings_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "LogSettings" ( "LogSettings_id" )
	"LogSettings_id" BIGINT CHECK ( "LogSettings_id" >= 0 ) CONSTRAINT FK_tLogSettings_LogSettings REFERENCES "LogSettings" ( "LogSettings_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceSettings" ( "tServiceSettings_id" ), PARENT NODE : LogSettings, ANCESTOR NODE : Services
	"tServiceSettings_id" BIGINT CHECK ( "tServiceSettings_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "logEna" ( "logEna_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : LogSettings
	"logEna_id" BIGINT CHECK ( "logEna_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "trgOps" ( "trgOps_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : LogSettings
	"trgOps_id" BIGINT CHECK ( "trgOps_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "intgPd" ( "intgPd_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : LogSettings
	"intgPd_id" BIGINT CHECK ( "intgPd_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tGSESettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tGSESettings_id" BIGINT CHECK ( "tGSESettings_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "GSESettings" ( "GSESettings_id" )
	"GSESettings_id" BIGINT CHECK ( "GSESettings_id" >= 0 ) CONSTRAINT FK_tGSESettings_GSESettings REFERENCES "GSESettings" ( "GSESettings_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceSettings" ( "tServiceSettings_id" ), PARENT NODE : GSESettings, ANCESTOR NODE : Services
	"tServiceSettings_id" BIGINT CHECK ( "tServiceSettings_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "appID" ( "appID_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : GSESettings
	"appID_id" BIGINT CHECK ( "appID_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "dataLabel" ( "dataLabel_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : GSESettings
	"dataLabel_id" BIGINT CHECK ( "dataLabel_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSMVSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSMVSettings_id" BIGINT CHECK ( "tSMVSettings_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "SMVSettings" ( "SMVSettings_id" )
	"SMVSettings_id" BIGINT CHECK ( "SMVSettings_id" >= 0 ) CONSTRAINT FK_tSMVSettings_SMVSettings REFERENCES "SMVSettings" ( "SMVSettings_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceSettings" ( "tServiceSettings_id" ), PARENT NODE : SMVSettings, ANCESTOR NODE : Services
	"tServiceSettings_id" BIGINT CHECK ( "tServiceSettings_id" >= 0 ) ,
-- xs:restriction/xs:minExclusive="0"
	"SmpRate" INTEGER CHECK ( "SmpRate" > 0 ) ,
-- xs:restriction/xs:minExclusive="0"
	"SamplesPerSec" INTEGER CHECK ( "SamplesPerSec" > 0 ) ,
-- xs:restriction/xs:minExclusive="0"
	"SecPerSamples" INTEGER CHECK ( "SecPerSamples" > 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "svID" ( "svID_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"svID_id" BIGINT CHECK ( "svID_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "optFields" ( "optFields_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"optFields_id" BIGINT CHECK ( "optFields_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "smpRate" ( "smpRate_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"smpRate_id" BIGINT CHECK ( "smpRate_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"samplesPerSec" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"pdcTimeStamp" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GSEDir" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GSEDir_id" BIGINT CHECK ( "GSEDir_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tGOOSEcapabilities" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tGOOSEcapabilities_id" BIGINT CHECK ( "tGOOSEcapabilities_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "GOOSE" ( "GOOSE_id" )
	"GOOSE_id" BIGINT CHECK ( "GOOSE_id" >= 0 ) CONSTRAINT FK_tGOOSEcapabilities_GOOSE REFERENCES "GOOSE" ( "GOOSE_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" ), PARENT NODE : GOOSE, ANCESTOR NODE : Services
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"fixedOffs" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "GSSE" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"GSSE_id" BIGINT CHECK ( "GSSE_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSMVsc" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSMVsc_id" BIGINT CHECK ( "tSMVsc_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "SMVsc" ( "SMVsc_id" )
	"SMVsc_id" BIGINT CHECK ( "SMVsc_id" >= 0 ) CONSTRAINT FK_tSMVsc_SMVsc REFERENCES "SMVsc" ( "SMVsc_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" ), PARENT NODE : SMVsc, ANCESTOR NODE : Services
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : delivery ( delivery_id, DELEGATED TO "tSMVDeliveryEnum_id" ), PARENT NODE : SMVsc
	delivery_id BIGINT CHECK ( delivery_id >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"deliveryConf" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tFileHandling" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tFileHandling_id" BIGINT CHECK ( "tFileHandling_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "FileHandling" ( "FileHandling_id" )
	"FileHandling_id" BIGINT CHECK ( "FileHandling_id" >= 0 ) CONSTRAINT FK_tFileHandling_FileHandling REFERENCES "FileHandling" ( "FileHandling_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : FileHandling, ANCESTOR NODE : Services
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	mms BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	ftp BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	ftps BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfLNs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfLNs_id" BIGINT CHECK ( "ConfLNs_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tConfLNs" ( "tConfLNs_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tConfLNs_id" BIGINT CHECK ( "tConfLNs_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ClientServices" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ClientServices_id" BIGINT CHECK ( "ClientServices_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tClientServices" ( "tClientServices_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tClientServices_id" BIGINT CHECK ( "tClientServices_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfLdName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfLdName_id" BIGINT CHECK ( "ConfLdName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "SupSubscription" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SupSubscription_id" BIGINT CHECK ( "SupSubscription_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tSupSubscription" ( "tSupSubscription_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tSupSubscription_id" BIGINT CHECK ( "tSupSubscription_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfSigRef" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfSigRef_id" BIGINT CHECK ( "ConfSigRef_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceWithMaxNonZero" ( "tServiceWithMaxNonZero_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tServiceWithMaxNonZero_id" BIGINT CHECK ( "tServiceWithMaxNonZero_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ValueHandling" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ValueHandling_id" BIGINT CHECK ( "ValueHandling_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tValueHandling" ( "tValueHandling_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tValueHandling_id" BIGINT CHECK ( "tValueHandling_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "RedProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"RedProt_id" BIGINT CHECK ( "RedProt_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tRedProt" ( "tRedProt_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"tRedProt_id" BIGINT CHECK ( "tRedProt_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tTimeSyncProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tTimeSyncProt_id" BIGINT CHECK ( "tTimeSyncProt_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "TimeSyncProt" ( "TimeSyncProt_id" )
	"TimeSyncProt_id" BIGINT CHECK ( "TimeSyncProt_id" >= 0 ) CONSTRAINT FK_tTimeSyncProt_TimeSyncProt REFERENCES "TimeSyncProt" ( "TimeSyncProt_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : TimeSyncProt, ANCESTOR NODE : Services ClientServices
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	sntp BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	c37_238 BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	other BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tCommProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCommProt_id" BIGINT CHECK ( "tCommProt_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "CommProt" ( "CommProt_id" )
	"CommProt_id" BIGINT CHECK ( "CommProt_id" >= 0 ) CONSTRAINT FK_tCommProt_CommProt REFERENCES "CommProt" ( "CommProt_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : CommProt, ANCESTOR NODE : Services
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	ipv6 BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Subject" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"Subject_id" BIGINT CHECK ( "Subject_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tCert" ( "tCert_id" ), PARENT NODE : GOOSESecurity SMVSecurity
	"tCert_id" BIGINT CHECK ( "tCert_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "IssuerName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"IssuerName_id" BIGINT CHECK ( "IssuerName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tCert" ( "tCert_id" ), PARENT NODE : GOOSESecurity SMVSecurity
	"tCert_id" BIGINT CHECK ( "tCert_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "apName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"apName_id" BIGINT CHECK ( "apName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tAccessPointName" ( "tAccessPointName_id" ), PARENT NODE : ServerAt KDC
	"tAccessPointName_id" BIGINT CHECK ( "tAccessPointName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Association" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Association_id" BIGINT CHECK ( "Association_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tAssociation" ( "tAssociation_id" ), PARENT NODE : Server, ANCESTOR NODE : AccessPoint
	"tAssociation_id" BIGINT CHECK ( "tAssociation_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAccessControl" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAccessControl_id" BIGINT CHECK ( "tAccessControl_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "AccessControl" ( "AccessControl_id" )
	"AccessControl_id" BIGINT CHECK ( "AccessControl_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : AccessControl, ANCESTOR NODE : LDevice
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "ldName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ldName_id" BIGINT CHECK ( "ldName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tLDName" ( "tLDName_id" ), PARENT NODE : LDevice
	"tLDName_id" BIGINT CHECK ( "tLDName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE kind (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	kind_id BIGINT CHECK ( kind_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tAssociationKindEnum" ( "tAssociationKindEnum_id" ), PARENT NODE : Association
	"tAssociationKindEnum_id" BIGINT CHECK ( "tAssociationKindEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "associationID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"associationID_id" BIGINT CHECK ( "associationID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tAssociationID" ( "tAssociationID_id" ), PARENT NODE : Association
	"tAssociationID_id" BIGINT CHECK ( "tAssociationID_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "FCDA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"FCDA_id" BIGINT CHECK ( "FCDA_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tFCDA" ( "tFCDA_id" ), PARENT NODE : DataSet, ANCESTOR NODE : LN
	"tFCDA_id" BIGINT CHECK ( "tFCDA_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "doName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"doName_id" BIGINT CHECK ( "doName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tFullDOName" ( "tFullDOName_id" ), PARENT NODE : FCDA ExtRef
	"tFullDOName_id" BIGINT CHECK ( "tFullDOName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "daName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"daName_id" BIGINT CHECK ( "daName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tFullAttributeName" ( "tFullAttributeName_id" ), PARENT NODE : FCDA ExtRef
	"tFullAttributeName_id" BIGINT CHECK ( "tFullAttributeName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE fc (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	fc_id BIGINT CHECK ( fc_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tFCEnum" ( "tFCEnum_id" ), PARENT NODE : FCDA DA
	"tFCEnum_id" BIGINT CHECK ( "tFCEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "TrgOps" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"TrgOps_id" BIGINT CHECK ( "TrgOps_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tTrgOps" ( "tTrgOps_id" )
	"tTrgOps_id" BIGINT CHECK ( "tTrgOps_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ClientLN" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ClientLN_id" BIGINT CHECK ( "ClientLN_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tClientLN" ( "tClientLN_id" ), PARENT NODE : RptEnabled, ANCESTOR NODE : ReportControl
	"tClientLN_id" BIGINT CHECK ( "tClientLN_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "apRef" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"apRef_id" BIGINT CHECK ( "apRef_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAccessPointName" ( "tAccessPointName_id" ), PARENT NODE : ClientLN
	"tAccessPointName_id" BIGINT CHECK ( "tAccessPointName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "ExtRef" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"ExtRef_id" BIGINT CHECK ( "ExtRef_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE GROUP : "tExtRef" ( "tExtRef_id" ), PARENT NODE : Inputs, ANCESTOR NODE : LN
	"tExtRef_id" BIGINT CHECK ( "tExtRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "serviceType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"serviceType_id" BIGINT CHECK ( "serviceType_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceType" ( "tServiceType_id" ), PARENT NODE : ExtRef
	"tServiceType_id" BIGINT CHECK ( "tServiceType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "srcLDInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"srcLDInst_id" BIGINT CHECK ( "srcLDInst_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tLDInst" ( "tLDInst_id" ), PARENT NODE : ExtRef
	"tLDInst_id" BIGINT CHECK ( "tLDInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "srcPrefix" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"srcPrefix_id" BIGINT CHECK ( "srcPrefix_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tPrefix" ( "tPrefix_id" ), PARENT NODE : ExtRef
	"tPrefix_id" BIGINT CHECK ( "tPrefix_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "srcLNClass" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"srcLNClass_id" BIGINT CHECK ( "srcLNClass_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tLNClassEnum" ( "tLNClassEnum_id" ), PARENT NODE : ExtRef
	"tLNClassEnum_id" BIGINT CHECK ( "tLNClassEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "srcLNInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"srcLNInst_id" BIGINT CHECK ( "srcLNInst_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tLNInst" ( "tLNInst_id" ), PARENT NODE : ExtRef
	"tLNInst_id" BIGINT CHECK ( "tLNInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "Protocol" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"Protocol_id" BIGINT CHECK ( "Protocol_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tProtocol" ( "tProtocol_id" ), PARENT NODE : GSEControl SampledValueControl, ANCESTOR NODE : LN0
	"tProtocol_id" BIGINT CHECK ( "tProtocol_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "securityEnable" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"securityEnable_id" BIGINT CHECK ( "securityEnable_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tPredefinedTypeOfSecurityEnum" ( "tPredefinedTypeOfSecurityEnum_id" ), PARENT NODE : GSEControl SampledValueControl
	"tPredefinedTypeOfSecurityEnum_id" BIGINT CHECK ( "tPredefinedTypeOfSecurityEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "smpMod" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"smpMod_id" BIGINT CHECK ( "smpMod_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tSmpMod" ( "tSmpMod_id" ), PARENT NODE : SampledValueControl
	"tSmpMod_id" BIGINT CHECK ( "tSmpMod_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Val" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Val_id" BIGINT CHECK ( "Val_id" >= 0 ) ,
-- NESTED KEY : "tVal" ( "tVal_id" ), PARENT NODE : DAI, ANCESTOR NODE : DOI SDI
	"tVal_id" BIGINT CHECK ( "tVal_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "valKind" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"valKind_id" BIGINT CHECK ( "valKind_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tValKindEnum" ( "tValKindEnum_id" ), PARENT NODE : DAI
	"tValKindEnum_id" BIGINT CHECK ( "tValKindEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tServiceWithMaxAndModify" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceWithMaxAndModify_id" BIGINT CHECK ( "tServiceWithMaxAndModify_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceWithMax" ( "tServiceWithMax_id" )
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="true"
	modify BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "cbName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"cbName_id" BIGINT CHECK ( "cbName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsNoDynEnum" ( "tServiceSettingsNoDynEnum_id" ), PARENT NODE : SMVSettings
	"tServiceSettingsNoDynEnum_id" BIGINT CHECK ( "tServiceSettingsNoDynEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "optFields" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"optFields_id" BIGINT CHECK ( "optFields_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings SMVSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "bufTime" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"bufTime_id" BIGINT CHECK ( "bufTime_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "trgOps" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"trgOps_id" BIGINT CHECK ( "trgOps_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings LogSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "intgPd" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"intgPd_id" BIGINT CHECK ( "intgPd_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : ReportSettings LogSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "logEna" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"logEna_id" BIGINT CHECK ( "logEna_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : LogSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "dataLabel" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"dataLabel_id" BIGINT CHECK ( "dataLabel_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : GSESettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "svID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"svID_id" BIGINT CHECK ( "svID_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "smpRate" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"smpRate_id" BIGINT CHECK ( "smpRate_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tServiceSettingsEnum" ( "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE delivery (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	delivery_id BIGINT CHECK ( delivery_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tSMVDeliveryEnum" ( "tSMVDeliveryEnum_id" ), PARENT NODE : SMVsc
	"tSMVDeliveryEnum_id" BIGINT CHECK ( "tSMVDeliveryEnum_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: true, list: false, bridge: true, virtual: false
--
CREATE TABLE "SGEdit" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SGEdit_id" BIGINT CHECK ( "SGEdit_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : SettingGroups, ANCESTOR NODE : Services
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"resvTms" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: true, list: false, bridge: true, virtual: false
--
CREATE TABLE "ConfSG" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"ConfSG_id" BIGINT CHECK ( "ConfSG_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tServiceYesNo" ( "tServiceYesNo_id" ), PARENT NODE : SettingGroups, ANCESTOR NODE : Services
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"resvTms" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "iedType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"iedType_id" BIGINT CHECK ( "iedType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAnyName" ( "tAnyName_id" ), PARENT NODE : LNodeType DOType DAType
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tProtNs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tProtNs_id" BIGINT CHECK ( "tProtNs_id" >= 0 ) ,
-- FOREIGN KEY : "ProtNs" ( "ProtNs_id" )
	"ProtNs_id" BIGINT CHECK ( "ProtNs_id" >= 0 ) ,
-- NESTED KEY : "tNamespaceName" ( "tNamespaceName_id" ), PARENT NODE : ProtNs, ANCESTOR NODE : DA DAType
	"tNamespaceName_id" BIGINT CHECK ( "tNamespaceName_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="8-MMS"
-- xs:restriction/xs:minLength="1"
	type TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "EnumVal" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"EnumVal_id" BIGINT CHECK ( "EnumVal_id" >= 0 ) ,
-- NESTED KEY : "tEnumVal" ( "tEnumVal_id" ), PARENT NODE : EnumType, ANCESTOR NODE : DataTypeTemplates
	"tEnumVal_id" BIGINT CHECK ( "tEnumVal_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL.xsd
-- type: root child, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE revision (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	revision_id BIGINT CHECK ( revision_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tSclRevision" ( "tSclRevision_id" )
	"tSclRevision_id" BIGINT CHECK ( "tSclRevision_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tRef" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRef_id" BIGINT CHECK ( "tRef_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: pathName connectivityNode
-- xs:restriction/xs:pattern=".+/.+/.+/.+(/.+)*"
	content TEXT ,
-- FOREIGN KEY : "pathName" ( "pathName_id" )
	"pathName_id" BIGINT CHECK ( "pathName_id" >= 0 ) CONSTRAINT FK_tRef_pathName REFERENCES "pathName" ( "pathName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "connectivityNode" ( "connectivityNode_id" )
	"connectivityNode_id" BIGINT CHECK ( "connectivityNode_id" >= 0 ) CONSTRAINT FK_tRef_connectivityNode REFERENCES "connectivityNode" ( "connectivityNode_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAnyName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS CONDITIONAL ATTRIBUTE, ATTRIBUTE NODE: name type iedType
	content TEXT ,
-- FOREIGN KEY : "tName" ( "tName_id" )
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) CONSTRAINT FK_tAnyName_tName REFERENCES "tName" ( "tName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- FOREIGN KEY : "iedType" ( "iedType_id" )
	"iedType_id" BIGINT CHECK ( "iedType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAcsiName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xs:restriction/xs:pattern="[A-Za-z][0-9A-Za-z_]*"
	content TEXT ,
-- FOREIGN KEY : "tIEDName" ( "tIEDName_id" )
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) ,
-- FOREIGN KEY : "tDataSetName" ( "tDataSetName_id" )
	"tDataSetName_id" BIGINT CHECK ( "tDataSetName_id" >= 0 ) CONSTRAINT FK_tAcsiName_tDataSetName REFERENCES "tDataSetName" ( "tDataSetName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tCBName" ( "tCBName_id" )
	"tCBName_id" BIGINT CHECK ( "tCBName_id" >= 0 ) CONSTRAINT FK_tAcsiName_tCBName REFERENCES "tCBName" ( "tCBName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tLogName" ( "tLogName_id" )
	"tLogName_id" BIGINT CHECK ( "tLogName_id" >= 0 ) CONSTRAINT FK_tAcsiName_tLogName REFERENCES "tLogName" ( "tLogName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tRestrName1stU" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRestrName1stU_id" BIGINT CHECK ( "tRestrName1stU_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xs:restriction/xs:pattern="[A-Z][0-9A-Za-z]*"
	content TEXT ,
-- FOREIGN KEY : "tDataName" ( "tDataName_id" )
	"tDataName_id" BIGINT CHECK ( "tDataName_id" >= 0 ) CONSTRAINT FK_tRestrName1stU_tDataName REFERENCES "tDataName" ( "tDataName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Enums.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tRestrName1stL" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRestrName1stL_id" BIGINT CHECK ( "tRestrName1stL_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xs:restriction/xs:pattern="[a-z][0-9A-Za-z]*"
	content TEXT ,
-- FOREIGN KEY : "tSubDataName" ( "tSubDataName_id" )
	"tSubDataName_id" BIGINT CHECK ( "tSubDataName_id" >= 0 ) CONSTRAINT FK_tRestrName1stL_tSubDataName REFERENCES "tSubDataName" ( "tSubDataName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tExtensionAttributeNameEnum" ( "tExtensionAttributeNameEnum_id" )
	"tExtensionAttributeNameEnum_id" BIGINT CHECK ( "tExtensionAttributeNameEnum_id" >= 0 ) CONSTRAINT FK_tRestrName1stL_tExtensionAttributeNameEnum REFERENCES "tExtensionAttributeNameEnum" ( "tExtensionAttributeNameEnum_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPAddr" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPAddr_id" BIGINT CHECK ( "tPAddr_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:minLength="1"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd SCL.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSclRevision" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSclRevision_id" BIGINT CHECK ( "tSclRevision_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: originalSclRevision revision
-- xs:restriction/xs:pattern="[A-Z]"
	content TEXT ,
-- FOREIGN KEY : "originalSclRevision" ( "originalSclRevision_id" )
	"originalSclRevision_id" BIGINT CHECK ( "originalSclRevision_id" >= 0 ) ,
-- FOREIGN KEY : revision ( revision_id )
	revision_id BIGINT CHECK ( revision_id >= 0 ) CONSTRAINT FK_tSclRevision_revision REFERENCES revision ( revision_id ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tEmpty" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tEmpty_id" BIGINT CHECK ( "tEmpty_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tOnlyRelativeIEDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tOnlyRelativeIEDName_id" BIGINT CHECK ( "tOnlyRelativeIEDName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:pattern="@"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tIEDNameOrRelative" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tIEDNameOrRelative_id" BIGINT CHECK ( "tIEDNameOrRelative_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: iedName
-- xs:union/@memberTypes="tIEDName tOnlyRelativeIEDName"
	content TEXT ,
-- FOREIGN KEY : "iedName" ( "iedName_id" )
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) CONSTRAINT FK_tIEDNameOrRelative_iedName REFERENCES "iedName" ( "iedName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLDName_id" BIGINT CHECK ( "tLDName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: ldName
-- xs:restriction/xs:maxLength="64"
-- xs:restriction/xs:pattern="[A-Za-z][0-9A-Za-z_]*"
	content VARCHAR(64) ,
-- FOREIGN KEY : "ldName" ( "ldName_id" )
	"ldName_id" BIGINT CHECK ( "ldName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLDInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLDInst_id" BIGINT CHECK ( "tLDInst_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: ldInst inst srcLDInst
-- xs:restriction/xs:maxLength="64"
-- xs:restriction/xs:pattern="[A-Za-z0-9][0-9A-Za-z_]*"
	content VARCHAR(64) ,
-- FOREIGN KEY : "ldInst" ( "ldInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- FOREIGN KEY : inst ( inst_id )
	inst_id BIGINT CHECK ( inst_id >= 0 ) ,
-- FOREIGN KEY : "srcLDInst" ( "srcLDInst_id" )
	"srcLDInst_id" BIGINT CHECK ( "srcLDInst_id" >= 0 ) CONSTRAINT FK_tLDInst_srcLDInst REFERENCES "srcLDInst" ( "srcLDInst_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLDInstOrEmpty" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLDInstOrEmpty_id" BIGINT CHECK ( "tLDInstOrEmpty_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: ldInst
-- xs:union/@memberTypes="tLDInst tEmpty"
	content TEXT ,
-- FOREIGN KEY : "ldInst" ( "ldInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPrefix" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPrefix_id" BIGINT CHECK ( "tPrefix_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: prefix srcPrefix
-- xs:restriction/xs:maxLength="11"
-- xs:restriction/xs:pattern="[A-Za-z][0-9A-Za-z_]*"
	content VARCHAR(11) ,
-- FOREIGN KEY : prefix ( prefix_id )
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- FOREIGN KEY : "srcPrefix" ( "srcPrefix_id" )
	"srcPrefix_id" BIGINT CHECK ( "srcPrefix_id" >= 0 ) CONSTRAINT FK_tPrefix_srcPrefix REFERENCES "srcPrefix" ( "srcPrefix_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNInst" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLNInst_id" BIGINT CHECK ( "tLNInst_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: lnInst inst srcLNInst
-- xs:restriction/xs:pattern="[0-9]{1,12}"
	content TEXT ,
-- FOREIGN KEY : inst ( inst_id )
	inst_id BIGINT CHECK ( inst_id >= 0 ) ,
-- FOREIGN KEY : "lnInst" ( "lnInst_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- FOREIGN KEY : "srcLNInst" ( "srcLNInst_id" )
	"srcLNInst_id" BIGINT CHECK ( "srcLNInst_id" >= 0 ) CONSTRAINT FK_tLNInst_srcLNInst REFERENCES "srcLNInst" ( "srcLNInst_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNInstOrEmpty" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLNInstOrEmpty_id" BIGINT CHECK ( "tLNInstOrEmpty_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: lnInst
-- xs:union/@memberTypes="tLNInst tEmpty"
	content TEXT ,
-- FOREIGN KEY : "lnInst" ( "lnInst_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAccessPointName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAccessPointName_id" BIGINT CHECK ( "tAccessPointName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: name apName apRef
-- xs:restriction/xs:pattern="[A-Za-z0-9][0-9A-Za-z_]*"
	content TEXT ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) ,
-- FOREIGN KEY : "apName" ( "apName_id" )
	"apName_id" BIGINT CHECK ( "apName_id" >= 0 ) CONSTRAINT FK_tAccessPointName_apName REFERENCES "apName" ( "apName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "apRef" ( "apRef_id" )
	"apRef_id" BIGINT CHECK ( "apRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAssociationID" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAssociationID_id" BIGINT CHECK ( "tAssociationID_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: associationID
-- xs:restriction/xs:minLength="1"
-- xs:restriction/xs:pattern="[0-9A-Za-z]+"
	content TEXT ,
-- FOREIGN KEY : "associationID" ( "associationID_id" )
	"associationID_id" BIGINT CHECK ( "associationID_id" >= 0 ) CONSTRAINT FK_tAssociationID_associationID REFERENCES "associationID" ( "associationID_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tVisibleBasicLatin" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tVisibleBasicLatin_id" BIGINT CHECK ( "tVisibleBasicLatin_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xs:restriction/xs:pattern="[ -~]*"
	content TEXT ,
-- FOREIGN KEY : "tMessageID" ( "tMessageID_id" )
	"tMessageID_id" BIGINT CHECK ( "tMessageID_id" >= 0 ) CONSTRAINT FK_tVisibleBasicLatin_tMessageID REFERENCES "tMessageID" ( "tMessageID_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tFullAttributeName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tFullAttributeName_id" BIGINT CHECK ( "tFullAttributeName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: daName
-- xs:restriction/xs:pattern="[a-zA-Z][a-zA-Z0-9]*(\([0-9]+\))?(\.[a-zA-Z][a-zA-Z0-9]*(\([0-9]+\))?)*"
	content TEXT ,
-- FOREIGN KEY : "daName" ( "daName_id" )
	"daName_id" BIGINT CHECK ( "daName_id" >= 0 ) CONSTRAINT FK_tFullAttributeName_daName REFERENCES "daName" ( "daName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tFullDOName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tFullDOName_id" BIGINT CHECK ( "tFullDOName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: doName
-- xs:restriction/xs:pattern="[A-Z][0-9A-Za-z]{0,11}(\.[a-z][0-9A-Za-z]*(\([0-9]+\))?)?"
	content TEXT ,
-- FOREIGN KEY : "doName" ( "doName_id" )
	"doName_id" BIGINT CHECK ( "doName_id" >= 0 ) CONSTRAINT FK_tFullDOName_doName REFERENCES "doName" ( "doName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tNamespaceName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tNamespaceName_id" BIGINT CHECK ( "tNamespaceName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xs:restriction/xs:pattern="[ -~]+:20\d\d[A-Z]?"
	content TEXT ,
-- FOREIGN KEY : "tProtNs" ( "tProtNs_id" )
	"tProtNs_id" BIGINT CHECK ( "tProtNs_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLineType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLineType_id" BIGINT CHECK ( "tLineType_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
-- xs:restriction/xs:minLength="1"
	content TEXT ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tProcessType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tProcessType_id" BIGINT CHECK ( "tProcessType_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
-- xs:restriction/xs:minLength="1"
	content TEXT ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tProcessName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tProcessName_id" BIGINT CHECK ( "tProcessName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: processName
-- xs:restriction/xs:pattern=".+(/.+)*"
	content TEXT ,
-- FOREIGN KEY : "processName" ( "processName_id" )
	"processName_id" BIGINT CHECK ( "processName_id" >= 0 ) CONSTRAINT FK_tProcessName_processName REFERENCES "processName" ( "processName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedPTypeEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedPTypeEnum_content AS ENUM ( 'IP', 'IP-SUBNET', 'IP-GATEWAY', 'OSI-NSAP', 'OSI-TSEL', 'OSI-SSEL', 'OSI-PSEL', 'OSI-AP-Title', 'OSI-AP-Invoke', 'OSI-AE-Qualifier', 'OSI-AE-Invoke', 'MAC-Address', 'APPID', 'VLAN-PRIORITY', 'VLAN-ID', 'SNTP-Port', 'MMS-Port', 'DNSName', 'IPv6FlowLabel', 'IPv6ClassOfTraffic', 'C37-118-IP-Port', 'IP-UDP-PORT', 'IP-TCP-PORT' );
CREATE TABLE "tPredefinedPTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedPTypeEnum_id" BIGINT CHECK ( "tPredefinedPTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedPTypeEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionPTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionPTypeEnum_id" BIGINT CHECK ( "tExtensionPTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:pattern="[A-Z][0-9A-Za-z\-]*"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPTypeEnum_id" BIGINT CHECK ( "tPTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:union/@memberTypes="tPredefinedPTypeEnum tExtensionPTypeEnum"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedPTypePhysConnEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedPTypePhysConnEnum_content AS ENUM ( 'Type', 'Plug', 'Cable', 'Port' );
CREATE TABLE "tPredefinedPTypePhysConnEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedPTypePhysConnEnum_id" BIGINT CHECK ( "tPredefinedPTypePhysConnEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedPTypePhysConnEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPTypePhysConnEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPTypePhysConnEnum_id" BIGINT CHECK ( "tPTypePhysConnEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:union/@memberTypes="tPredefinedPTypePhysConnEnum tExtensionPTypeEnum"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedAttributeNameEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedAttributeNameEnum_content AS ENUM ( 'T', 'Test', 'Check', 'SIUnit', 'Oper', 'SBO', 'SBOw', 'Cancel' );
CREATE TABLE "tPredefinedAttributeNameEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedAttributeNameEnum_id" BIGINT CHECK ( "tPredefinedAttributeNameEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedAttributeNameEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAttributeNameEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAttributeNameEnum_id" BIGINT CHECK ( "tAttributeNameEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: name
-- xs:union/@memberTypes="tPredefinedAttributeNameEnum tExtensionAttributeNameEnum"
	content TEXT ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedCommonConductingEquipmentEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedCommonConductingEquipmentEnum_content AS ENUM ( 'CBR', 'DIS', 'VTR', 'CTR', 'GEN', 'CAP', 'REA', 'CON', 'MOT', 'EFN', 'PSH', 'BAT', 'BSH', 'CAB', 'GIL', 'LIN', 'RES', 'RRC', 'SAR', 'TCF', 'TCR', 'IFL', 'FAN', 'SCR', 'SMC', 'PMP' );
CREATE TABLE "tPredefinedCommonConductingEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedCommonConductingEquipmentEnum_id" BIGINT CHECK ( "tPredefinedCommonConductingEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedCommonConductingEquipmentEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionEquipmentEnum_id" BIGINT CHECK ( "tExtensionEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:minLength="3"
-- xs:restriction/xs:pattern="E[A-Z]*"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tCommonConductingEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCommonConductingEquipmentEnum_id" BIGINT CHECK ( "tCommonConductingEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
-- xs:union/@memberTypes="tPredefinedCommonConductingEquipmentEnum tExtensionEquipmentEnum"
	content TEXT ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPowerTransformerEnum_content CASCADE;
CREATE TYPE ENUM_tPowerTransformerEnum_content AS ENUM ( 'PTR' );
CREATE TABLE "tPowerTransformerEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPowerTransformerEnum_id" BIGINT CHECK ( "tPowerTransformerEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
	content ENUM_tPowerTransformerEnum_content ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tTransformerWindingEnum_content CASCADE;
CREATE TYPE ENUM_tTransformerWindingEnum_content AS ENUM ( 'PTW' );
CREATE TABLE "tTransformerWindingEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tTransformerWindingEnum_id" BIGINT CHECK ( "tTransformerWindingEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
	content ENUM_tTransformerWindingEnum_content ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedGeneralEquipmentEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedGeneralEquipmentEnum_content AS ENUM ( 'AXN', 'BAT', 'MOT', 'FAN', 'FIL', 'PMP', 'TNK', 'VLV' );
CREATE TABLE "tPredefinedGeneralEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedGeneralEquipmentEnum_id" BIGINT CHECK ( "tPredefinedGeneralEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedGeneralEquipmentEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionGeneralEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionGeneralEquipmentEnum_id" BIGINT CHECK ( "tExtensionGeneralEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:minLength="3"
-- xs:restriction/xs:pattern="E[A-Z]*"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tGeneralEquipmentEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tGeneralEquipmentEnum_id" BIGINT CHECK ( "tGeneralEquipmentEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
-- xs:union/@memberTypes="tPredefinedGeneralEquipmentEnum tExtensionGeneralEquipmentEnum"
	content TEXT ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tServiceSettingsNoDynEnum_content CASCADE;
CREATE TYPE ENUM_tServiceSettingsNoDynEnum_content AS ENUM ( 'Conf', 'Fix' );
CREATE TABLE "tServiceSettingsNoDynEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceSettingsNoDynEnum_id" BIGINT CHECK ( "tServiceSettingsNoDynEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: cbName
	content ENUM_tServiceSettingsNoDynEnum_content ,
-- FOREIGN KEY : "cbName" ( "cbName_id" )
	"cbName_id" BIGINT CHECK ( "cbName_id" >= 0 ) CONSTRAINT FK_tServiceSettingsNoDynEnum_cbName REFERENCES "cbName" ( "cbName_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tServiceSettingsEnum_content CASCADE;
CREATE TYPE ENUM_tServiceSettingsEnum_content AS ENUM ( 'Dyn', 'Conf', 'Fix' );
CREATE TABLE "tServiceSettingsEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceSettingsEnum_id" BIGINT CHECK ( "tServiceSettingsEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: datSet rptID appID optFields bufTime trgOps intgPd logEna dataLabel svID smpRate
	content ENUM_tServiceSettingsEnum_content ,
-- FOREIGN KEY : "datSet" ( "datSet_id" )
	"datSet_id" BIGINT CHECK ( "datSet_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_datSet REFERENCES "datSet" ( "datSet_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "rptID" ( "rptID_id" )
	"rptID_id" BIGINT CHECK ( "rptID_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_rptID REFERENCES "rptID" ( "rptID_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "optFields" ( "optFields_id" )
	"optFields_id" BIGINT CHECK ( "optFields_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_optFields REFERENCES "optFields" ( "optFields_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "bufTime" ( "bufTime_id" )
	"bufTime_id" BIGINT CHECK ( "bufTime_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_bufTime REFERENCES "bufTime" ( "bufTime_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "trgOps" ( "trgOps_id" )
	"trgOps_id" BIGINT CHECK ( "trgOps_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_trgOps REFERENCES "trgOps" ( "trgOps_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "intgPd" ( "intgPd_id" )
	"intgPd_id" BIGINT CHECK ( "intgPd_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_intgPd REFERENCES "intgPd" ( "intgPd_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "logEna" ( "logEna_id" )
	"logEna_id" BIGINT CHECK ( "logEna_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_logEna REFERENCES "logEna" ( "logEna_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "appID" ( "appID_id" )
	"appID_id" BIGINT CHECK ( "appID_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_appID REFERENCES "appID" ( "appID_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "dataLabel" ( "dataLabel_id" )
	"dataLabel_id" BIGINT CHECK ( "dataLabel_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_dataLabel REFERENCES "dataLabel" ( "dataLabel_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "svID" ( "svID_id" )
	"svID_id" BIGINT CHECK ( "svID_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_svID REFERENCES "svID" ( "svID_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "smpRate" ( "smpRate_id" )
	"smpRate_id" BIGINT CHECK ( "smpRate_id" >= 0 ) CONSTRAINT FK_tServiceSettingsEnum_smpRate REFERENCES "smpRate" ( "smpRate_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tRedProtEnum_content CASCADE;
CREATE TYPE ENUM_tRedProtEnum_content AS ENUM ( 'none', 'hsr', 'prp', 'rstp' );
CREATE TABLE "tRedProtEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRedProtEnum_id" BIGINT CHECK ( "tRedProtEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tRedProtEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tSMVDeliveryEnum_content CASCADE;
CREATE TYPE ENUM_tSMVDeliveryEnum_content AS ENUM ( 'unicast', 'multicast', 'both' );
CREATE TABLE "tSMVDeliveryEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSMVDeliveryEnum_id" BIGINT CHECK ( "tSMVDeliveryEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: delivery
	content ENUM_tSMVDeliveryEnum_content ,
-- FOREIGN KEY : delivery ( delivery_id )
	delivery_id BIGINT CHECK ( delivery_id >= 0 ) CONSTRAINT FK_tSMVDeliveryEnum_delivery REFERENCES delivery ( delivery_id ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPhaseEnum_content CASCADE;
CREATE TYPE ENUM_tPhaseEnum_content AS ENUM ( 'A', 'B', 'C', 'N', 'all', 'none', 'AB', 'BC', 'CA' );
CREATE TABLE "tPhaseEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPhaseEnum_id" BIGINT CHECK ( "tPhaseEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: phase
	content ENUM_tPhaseEnum_content ,
-- FOREIGN KEY : phase ( phase_id )
	phase_id BIGINT CHECK ( phase_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tAuthenticationEnum_content CASCADE;
CREATE TYPE ENUM_tAuthenticationEnum_content AS ENUM ( 'none', 'password', 'weak', 'strong', 'certificate' );
CREATE TABLE "tAuthenticationEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAuthenticationEnum_id" BIGINT CHECK ( "tAuthenticationEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tAuthenticationEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tAssociationKindEnum_content CASCADE;
CREATE TYPE ENUM_tAssociationKindEnum_content AS ENUM ( 'pre-established', 'predefined' );
CREATE TABLE "tAssociationKindEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAssociationKindEnum_id" BIGINT CHECK ( "tAssociationKindEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: kind
	content ENUM_tAssociationKindEnum_content ,
-- FOREIGN KEY : kind ( kind_id )
	kind_id BIGINT CHECK ( kind_id >= 0 ) CONSTRAINT FK_tAssociationKindEnum_kind REFERENCES kind ( kind_id ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tLPHDEnum_content CASCADE;
CREATE TYPE ENUM_tLPHDEnum_content AS ENUM ( 'LPHD' );
CREATE TABLE "tLPHDEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLPHDEnum_id" BIGINT CHECK ( "tLPHDEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tLPHDEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tLLN0Enum_content CASCADE;
CREATE TYPE ENUM_tLLN0Enum_content AS ENUM ( 'LLN0' );
CREATE TABLE "tLLN0Enum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLLN0Enum_id" BIGINT CHECK ( "tLLN0Enum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tLLN0Enum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tSystemLNGroupEnum_content CASCADE;
CREATE TYPE ENUM_tSystemLNGroupEnum_content AS ENUM ( 'LLN0', 'LPHD', 'LCCH', 'LGOS', 'LSVS', 'LTIM', 'LTMS', 'LTRK' );
CREATE TABLE "tSystemLNGroupEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSystemLNGroupEnum_id" BIGINT CHECK ( "tSystemLNGroupEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="LLN0"
	content ENUM_tSystemLNGroupEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupAEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupAEnum_content AS ENUM ( 'ANCR', 'ARCO', 'ARIS', 'ATCC', 'AVCO' );
CREATE TABLE "tDomainLNGroupAEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupAEnum_id" BIGINT CHECK ( "tDomainLNGroupAEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="A[A-Z]*"
	content ENUM_tDomainLNGroupAEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupCEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupCEnum_content AS ENUM ( 'CALH', 'CCGR', 'CILO', 'CPOW', 'CSWI', 'CSYN' );
CREATE TABLE "tDomainLNGroupCEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupCEnum_id" BIGINT CHECK ( "tDomainLNGroupCEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="C[A-Z]*"
	content ENUM_tDomainLNGroupCEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupFEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupFEnum_content AS ENUM ( 'FCNT', 'FCSD', 'FFIL', 'FLIM', 'FPID', 'FRMP', 'FSPT', 'FXOT', 'FXUT' );
CREATE TABLE "tDomainLNGroupFEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupFEnum_id" BIGINT CHECK ( "tDomainLNGroupFEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="F[A-Z]*"
	content ENUM_tDomainLNGroupFEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupGEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupGEnum_content AS ENUM ( 'GAPC', 'GGIO', 'GLOG', 'GSAL' );
CREATE TABLE "tDomainLNGroupGEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupGEnum_id" BIGINT CHECK ( "tDomainLNGroupGEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="G[A-Z]*"
	content ENUM_tDomainLNGroupGEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupIEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupIEnum_content AS ENUM ( 'IARC', 'IHMI', 'ISAF', 'ITCI', 'ITMI', 'ITPC' );
CREATE TABLE "tDomainLNGroupIEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupIEnum_id" BIGINT CHECK ( "tDomainLNGroupIEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="I[A-Z]*"
	content ENUM_tDomainLNGroupIEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupKEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupKEnum_content AS ENUM ( 'KFAN', 'KFIL', 'KPMP', 'KTNK', 'KVLV' );
CREATE TABLE "tDomainLNGroupKEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupKEnum_id" BIGINT CHECK ( "tDomainLNGroupKEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="K[A-Z]*"
	content ENUM_tDomainLNGroupKEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupMEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupMEnum_content AS ENUM ( 'MDIF', 'MENV', 'MFLK', 'MHAI', 'MHAN', 'MHYD', 'MMDC', 'MMET', 'MMTN', 'MMTR', 'MMXN', 'MMXU', 'MSQI', 'MSTA' );
CREATE TABLE "tDomainLNGroupMEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupMEnum_id" BIGINT CHECK ( "tDomainLNGroupMEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="M[A-Z]*"
	content ENUM_tDomainLNGroupMEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupPEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupPEnum_content AS ENUM ( 'PDIF', 'PDIR', 'PDIS', 'PDOP', 'PDUP', 'PFRC', 'PHAR', 'PHIZ', 'PIOC', 'PMRI', 'PMSS', 'POPF', 'PPAM', 'PRTR', 'PSCH', 'PSDE', 'PTEF', 'PTHF', 'PTOC', 'PTOF', 'PTOV', 'PTRC', 'PTTR', 'PTUC', 'PTUF', 'PTUV', 'PUPF', 'PVOC', 'PVPH', 'PZSU' );
CREATE TABLE "tDomainLNGroupPEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupPEnum_id" BIGINT CHECK ( "tDomainLNGroupPEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="P[A-Z]*"
	content ENUM_tDomainLNGroupPEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupQEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupQEnum_content AS ENUM ( 'QFVR', 'QITR', 'QIUB', 'QVTR', 'QVUB', 'QVVR' );
CREATE TABLE "tDomainLNGroupQEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupQEnum_id" BIGINT CHECK ( "tDomainLNGroupQEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="Q[A-Z]*"
	content ENUM_tDomainLNGroupQEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupREnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupREnum_content AS ENUM ( 'RADR', 'RBDR', 'RBRF', 'RDIR', 'RDRE', 'RDRS', 'RFLO', 'RMXU', 'RPSB', 'RREC', 'RSYN' );
CREATE TABLE "tDomainLNGroupREnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupREnum_id" BIGINT CHECK ( "tDomainLNGroupREnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="R[A-Z]*"
	content ENUM_tDomainLNGroupREnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupSEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupSEnum_content AS ENUM ( 'SARC', 'SCBR', 'SIMG', 'SIML', 'SLTC', 'SOPM', 'SPDC', 'SPTR', 'SSWI', 'STMP', 'SVBR' );
CREATE TABLE "tDomainLNGroupSEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupSEnum_id" BIGINT CHECK ( "tDomainLNGroupSEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="S[A-Z]*"
	content ENUM_tDomainLNGroupSEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupTEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupTEnum_content AS ENUM ( 'TANG', 'TAXD', 'TCTR', 'TDST', 'TFLW', 'TFRQ', 'TGSN', 'THUM', 'TLVL', 'TMGF', 'TMVM', 'TPOS', 'TPRS', 'TRTN', 'TSND', 'TTMP', 'TTNS', 'TVBR', 'TVTR', 'TWPH' );
CREATE TABLE "tDomainLNGroupTEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupTEnum_id" BIGINT CHECK ( "tDomainLNGroupTEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="T[A-Z]*"
	content ENUM_tDomainLNGroupTEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupXEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupXEnum_content AS ENUM ( 'XCBR', 'XSWI' );
CREATE TABLE "tDomainLNGroupXEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupXEnum_id" BIGINT CHECK ( "tDomainLNGroupXEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="X[A-Z]*"
	content ENUM_tDomainLNGroupXEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupYEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupYEnum_content AS ENUM ( 'YEFN', 'YLTC', 'YPSH', 'YPTR' );
CREATE TABLE "tDomainLNGroupYEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupYEnum_id" BIGINT CHECK ( "tDomainLNGroupYEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="Y[A-Z]*"
	content ENUM_tDomainLNGroupYEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tDomainLNGroupZEnum_content CASCADE;
CREATE TYPE ENUM_tDomainLNGroupZEnum_content AS ENUM ( 'ZAXN', 'ZBAT', 'ZBSH', 'ZCAB', 'ZCAP', 'ZCON', 'ZGEN', 'ZGIL', 'ZLIN', 'ZMOT', 'ZREA', 'ZRES', 'ZRRC', 'ZSAR', 'ZSCR', 'ZSMC', 'ZTCF', 'ZTCR' );
CREATE TABLE "tDomainLNGroupZEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNGroupZEnum_id" BIGINT CHECK ( "tDomainLNGroupZEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="Z[A-Z]*"
	content ENUM_tDomainLNGroupZEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tDomainLNEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDomainLNEnum_id" BIGINT CHECK ( "tDomainLNEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:union/@memberTypes="tDomainLNGroupAEnum tDomainLNGroupCEnum tDomainLNGroupFEnum tDomainLNGroupGEnum tDomainLNGroupIEnum tDomainLNGroupKEnum tDomainLNGroupMEnum tDomainLNGroupPEnum tDomainLNGroupQEnum tDomainLNGroupREnum tDomainLNGroupSEnum tDomainLNGroupTEnum tDomainLNGroupXEnum tDomainLNGroupYEnum tDomainLNGroupZEnum"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPredefinedLNClassEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedLNClassEnum_id" BIGINT CHECK ( "tPredefinedLNClassEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:union/@memberTypes="tSystemLNGroupEnum tDomainLNEnum"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: inlined simple type as a primitive data type), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionLNClassEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionLNClassEnum_id" BIGINT CHECK ( "tExtensionLNClassEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:length="4"
-- xs:restriction/xs:pattern="[A-Z]+"
	content VARCHAR(4)
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNClassEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLNClassEnum_id" BIGINT CHECK ( "tLNClassEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: lnClass srcLNClass
-- xs:union/@memberTypes="tPredefinedLNClassEnum tExtensionLNClassEnum"
	content TEXT ,
-- FOREIGN KEY : "lnClass" ( "lnClass_id" )
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- FOREIGN KEY : "srcLNClass" ( "srcLNClass_id" )
	"srcLNClass_id" BIGINT CHECK ( "srcLNClass_id" >= 0 ) CONSTRAINT FK_tLNClassEnum_srcLNClass REFERENCES "srcLNClass" ( "srcLNClass_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedCDCEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedCDCEnum_content AS ENUM ( 'SPS', 'DPS', 'INS', 'ENS', 'ACT', 'ACD', 'SEC', 'BCR', 'HST', 'VSS', 'MV', 'CMV', 'SAV', 'WYE', 'DEL', 'SEQ', 'HMV', 'HWYE', 'HDEL', 'SPC', 'DPC', 'INC', 'ENC', 'BSC', 'ISC', 'APC', 'BAC', 'SPG', 'ING', 'ENG', 'ORG', 'TSG', 'CUG', 'VSG', 'ASG', 'CURVE', 'CSG', 'DPL', 'LPL', 'CSD', 'CST', 'BTS', 'UTS', 'LTS', 'GTS', 'MTS', 'NTS', 'STS', 'CTS', 'OTS', 'VSD' );
CREATE TABLE "tPredefinedCDCEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedCDCEnum_id" BIGINT CHECK ( "tPredefinedCDCEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content ENUM_tPredefinedCDCEnum_content ,
-- FOREIGN KEY : "tCDCEnum" ( "tCDCEnum_id" )
	"tCDCEnum_id" BIGINT CHECK ( "tCDCEnum_id" >= 0 ) CONSTRAINT FK_tPredefinedCDCEnum_tCDCEnum REFERENCES "tCDCEnum" ( "tCDCEnum_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionCDCEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionCDCEnum_id" BIGINT CHECK ( "tExtensionCDCEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:minLength="1"
-- xs:restriction/xs:maxLength="5"
-- xs:restriction/xs:pattern="[A-Za-z]+"
	content VARCHAR(5)
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tFCEnum_content CASCADE;
CREATE TYPE ENUM_tFCEnum_content AS ENUM ( 'ST', 'MX', 'CO', 'SP', 'SG', 'SE', 'SV', 'CF', 'DC', 'EX', 'SR', 'BL', 'OR' );
CREATE TABLE "tFCEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tFCEnum_id" BIGINT CHECK ( "tFCEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: fc
	content ENUM_tFCEnum_content ,
-- FOREIGN KEY : fc ( fc_id )
	fc_id BIGINT CHECK ( fc_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedBasicTypeEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedBasicTypeEnum_content AS ENUM ( 'BOOLEAN', 'INT8', 'INT16', 'INT24', 'INT32', 'INT64', 'INT128', 'INT8U', 'INT16U', 'INT24U', 'INT32U', 'FLOAT32', 'FLOAT64', 'Enum', 'Dbpos', 'Tcmd', 'Quality', 'Timestamp', 'VisString32', 'VisString64', 'VisString65', 'VisString129', 'VisString255', 'Octet64', 'Unicode255', 'Struct', 'EntryTime', 'Check', 'ObjRef', 'Currency', 'PhyComAddr', 'TrgOps', 'OptFlds', 'SvOptFlds', 'EntryID' );
CREATE TABLE "tPredefinedBasicTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedBasicTypeEnum_id" BIGINT CHECK ( "tPredefinedBasicTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content ENUM_tPredefinedBasicTypeEnum_content ,
-- FOREIGN KEY : "tBasicTypeEnum" ( "tBasicTypeEnum_id" )
	"tBasicTypeEnum_id" BIGINT CHECK ( "tBasicTypeEnum_id" >= 0 ) CONSTRAINT FK_tPredefinedBasicTypeEnum_tBasicTypeEnum REFERENCES "tBasicTypeEnum" ( "tBasicTypeEnum_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tValKindEnum_content CASCADE;
CREATE TYPE ENUM_tValKindEnum_content AS ENUM ( 'Spec', 'Conf', 'RO', 'Set' );
CREATE TABLE "tValKindEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tValKindEnum_id" BIGINT CHECK ( "tValKindEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: valKind
	content ENUM_tValKindEnum_content ,
-- FOREIGN KEY : "valKind" ( "valKind_id" )
	"valKind_id" BIGINT CHECK ( "valKind_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tGSEControlTypeEnum_content CASCADE;
CREATE TYPE ENUM_tGSEControlTypeEnum_content AS ENUM ( 'GSSE', 'GOOSE' );
CREATE TABLE "tGSEControlTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tGSEControlTypeEnum_id" BIGINT CHECK ( "tGSEControlTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: type
	content ENUM_tGSEControlTypeEnum_content ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tUnitMultiplierEnum_content CASCADE;
CREATE TYPE ENUM_tUnitMultiplierEnum_content AS ENUM ( 'm', 'k', 'M', 'mu', 'y', 'z', 'a', 'f', 'p', 'n', 'c', 'd', 'da', 'h', 'G', 'T', 'P', 'E', 'Z', 'Y' );
CREATE TABLE "tUnitMultiplierEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tUnitMultiplierEnum_id" BIGINT CHECK ( "tUnitMultiplierEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: multiplier
	content ENUM_tUnitMultiplierEnum_content ,
-- FOREIGN KEY : multiplier ( multiplier_id )
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 ) CONSTRAINT FK_tUnitMultiplierEnum_multiplier REFERENCES multiplier ( multiplier_id ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tRightEnum_content CASCADE;
CREATE TYPE ENUM_tRightEnum_content AS ENUM ( 'full', 'fix', 'dataflow' );
CREATE TABLE "tRightEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRightEnum_id" BIGINT CHECK ( "tRightEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: engRight
	content ENUM_tRightEnum_content ,
-- FOREIGN KEY : "engRight" ( "engRight_id" )
	"engRight_id" BIGINT CHECK ( "engRight_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSDOCount" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSDOCount_id" BIGINT CHECK ( "tSDOCount_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: count
-- xs:union/@memberTypes="xs:unsignedInt tRestrName1stL"
	content TEXT ,
-- FOREIGN KEY : count ( count_id )
	count_id BIGINT CHECK ( count_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tDACount" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDACount_id" BIGINT CHECK ( "tDACount_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: count
-- xs:union/@memberTypes="xs:unsignedInt tAttributeNameEnum"
	content TEXT ,
-- FOREIGN KEY : count ( count_id )
	count_id BIGINT CHECK ( count_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tSmpMod_content CASCADE;
CREATE TYPE ENUM_tSmpMod_content AS ENUM ( 'SmpPerPeriod', 'SmpPerSec', 'SecPerSmp' );
CREATE TABLE "tSmpMod" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSmpMod_id" BIGINT CHECK ( "tSmpMod_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: smpMod
	content ENUM_tSmpMod_content ,
-- FOREIGN KEY : "smpMod" ( "smpMod_id" )
	"smpMod_id" BIGINT CHECK ( "smpMod_id" >= 0 ) CONSTRAINT FK_tSmpMod_smpMod REFERENCES "smpMod" ( "smpMod_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedPhysConnTypeEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedPhysConnTypeEnum_content AS ENUM ( 'Connection', 'RedConn' );
CREATE TABLE "tPredefinedPhysConnTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedPhysConnTypeEnum_id" BIGINT CHECK ( "tPredefinedPhysConnTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
	content ENUM_tPredefinedPhysConnTypeEnum_content
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtensionPhysConnTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tExtensionPhysConnTypeEnum_id" BIGINT CHECK ( "tExtensionPhysConnTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:restriction/xs:pattern="[A-Z][0-9A-Za-z\-]*"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd
-- type: admin root (orphan: unreachable from the document root), content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPhysConnTypeEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPhysConnTypeEnum_id" BIGINT CHECK ( "tPhysConnTypeEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl)
-- xs:union/@memberTypes="tPredefinedPhysConnTypeEnum tExtensionPhysConnTypeEnum"
	content TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tServiceType_content CASCADE;
CREATE TYPE ENUM_tServiceType_content AS ENUM ( 'Poll', 'Report', 'GOOSE', 'SMV' );
CREATE TABLE "tServiceType" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceType_id" BIGINT CHECK ( "tServiceType_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: serviceType
	content ENUM_tServiceType_content ,
-- FOREIGN KEY : "serviceType" ( "serviceType_id" )
	"serviceType_id" BIGINT CHECK ( "serviceType_id" >= 0 ) CONSTRAINT FK_tServiceType_serviceType REFERENCES "serviceType" ( "serviceType_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tPredefinedTypeOfSecurityEnum_content CASCADE;
CREATE TYPE ENUM_tPredefinedTypeOfSecurityEnum_content AS ENUM ( 'None', 'Signature', 'SignatureAndEncryption' );
CREATE TABLE "tPredefinedTypeOfSecurityEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPredefinedTypeOfSecurityEnum_id" BIGINT CHECK ( "tPredefinedTypeOfSecurityEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: securityEnable
	content ENUM_tPredefinedTypeOfSecurityEnum_content ,
-- FOREIGN KEY : "securityEnable" ( "securityEnable_id" )
	"securityEnable_id" BIGINT CHECK ( "securityEnable_id" >= 0 ) CONSTRAINT FK_tPredefinedTypeOfSecurityEnum_securityEnable REFERENCES "securityEnable" ( "securityEnable_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tBaseElement" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- ANY ELEMENT
	any_element XML ,
-- NESTED KEY : "Text" ( "Text_id", DELEGATED TO "tText_id" ), PARENT NODE : SCL
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- NESTED KEY : "Private" ( "Private_id", DELEGATED TO "tPrivate_id" ), PARENT NODE : SCL
	"Private_id" BIGINT CHECK ( "Private_id" >= 0 ) ,
-- ANY ATTRIBUTE
	any_attribute XML ,
-- FOREIGN KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) ,
-- FOREIGN KEY : "tNaming" ( "tNaming_id" )
	"tNaming_id" BIGINT CHECK ( "tNaming_id" >= 0 ) ,
-- FOREIGN KEY : "tIDNaming" ( "tIDNaming_id" )
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) ,
-- FOREIGN KEY : "SCL" ( "SCL_id" )
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) CONSTRAINT FK_tBaseElement_SCL REFERENCES "SCL" ( "SCL_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAnyContentFromOtherNamespace" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content TEXT ,
-- ANY ELEMENT
	any_element XML ,
-- ANY ATTRIBUTE
	any_attribute XML ,
-- FOREIGN KEY : "tText" ( "tText_id" )
	"tText_id" BIGINT CHECK ( "tText_id" >= 0 ) CONSTRAINT FK_tAnyContentFromOtherNamespace_tText REFERENCES "tText" ( "tText_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tPrivate" ( "tPrivate_id" )
	"tPrivate_id" BIGINT CHECK ( "tPrivate_id" >= 0 ) ,
-- FOREIGN KEY : "tHitem" ( "tHitem_id" )
	"tHitem_id" BIGINT CHECK ( "tHitem_id" >= 0 ) ,
-- FOREIGN KEY : "tAccessControl" ( "tAccessControl_id" )
	"tAccessControl_id" BIGINT CHECK ( "tAccessControl_id" >= 0 ) CONSTRAINT FK_tAnyContentFromOtherNamespace_tAccessControl REFERENCES "tAccessControl" ( "tAccessControl_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "History" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"History_id" BIGINT CHECK ( "History_id" >= 0 ) ,
-- FOREIGN KEY : "tHeader" ( "tHeader_id" )
	"tHeader_id" BIGINT CHECK ( "tHeader_id" >= 0 ) CONSTRAINT FK_History_tHeader REFERENCES "tHeader" ( "tHeader_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "Hitem" ( "Hitem_id", DELEGATED TO "tHitem_id" )
	"Hitem_id" BIGINT CHECK ( "Hitem_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_IED.xsd SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tVal" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tVal_id" BIGINT CHECK ( "tVal_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- ATTRIBUTE
	"sGroup" INTEGER CHECK ( "sGroup" >= 0 ) ,
-- FOREIGN KEY : "Val" ( "Val_id" )
	"Val_id" BIGINT CHECK ( "Val_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tValueWithUnit" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tValueWithUnit_id" BIGINT CHECK ( "tValueWithUnit_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content DECIMAL ,
-- ATTRIBUTE
	unit TEXT NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : multiplier ( multiplier_id, DELEGATED TO "tUnitMultiplierEnum_id" )
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 ) ,
-- FOREIGN KEY : "tVoltage" ( "tVoltage_id" )
	"tVoltage_id" BIGINT CHECK ( "tVoltage_id" >= 0 ) CONSTRAINT FK_tValueWithUnit_tVoltage REFERENCES "tVoltage" ( "tVoltage_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tDurationInSec" ( "tDurationInSec_id" )
	"tDurationInSec_id" BIGINT CHECK ( "tDurationInSec_id" >= 0 ) CONSTRAINT FK_tValueWithUnit_tDurationInSec REFERENCES "tDurationInSec" ( "tDurationInSec_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tDurationInMilliSec" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDurationInMilliSec_id" BIGINT CHECK ( "tDurationInMilliSec_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content DECIMAL ,
-- ATTRIBUTE
	unit TEXT CHECK ( unit = 's' ) NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : multiplier ( multiplier_id, DELEGATED TO "tUnitMultiplierEnum_id" )
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tBitRateInMbPerSec" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tBitRateInMbPerSec_id" BIGINT CHECK ( "tBitRateInMbPerSec_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content DECIMAL ,
-- ATTRIBUTE
	unit TEXT CHECK ( unit = 'b/s' ) NOT NULL ,
-- NESTED KEY AS ATTRIBUTE : multiplier ( multiplier_id, DELEGATED TO "tUnitMultiplierEnum_id" )
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServices" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServices_id" BIGINT CHECK ( "tServices_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Services" ( "Services_id" )
	"Services_id" BIGINT CHECK ( "Services_id" >= 0 ) ,
-- NESTED KEY : "DynAssociation" ( "DynAssociation_id", DELEGATED TO "tServiceWithOptionalMax_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"DynAssociation_id" BIGINT CHECK ( "DynAssociation_id" >= 0 ) ,
-- NESTED KEY : "SettingGroups" ( "SettingGroups_id", DELEGATED TO "tSettingGroups_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"SettingGroups_id" BIGINT CHECK ( "SettingGroups_id" >= 0 ) ,
-- NESTED KEY : "GetDirectory" ( "GetDirectory_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GetDirectory_id" BIGINT CHECK ( "GetDirectory_id" >= 0 ) ,
-- NESTED KEY : "GetDataObjectDefinition" ( "GetDataObjectDefinition_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GetDataObjectDefinition_id" BIGINT CHECK ( "GetDataObjectDefinition_id" >= 0 ) ,
-- NESTED KEY : "DataObjectDirectory" ( "DataObjectDirectory_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"DataObjectDirectory_id" BIGINT CHECK ( "DataObjectDirectory_id" >= 0 ) ,
-- NESTED KEY : "GetDataSetValue" ( "GetDataSetValue_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GetDataSetValue_id" BIGINT CHECK ( "GetDataSetValue_id" >= 0 ) ,
-- NESTED KEY : "SetDataSetValue" ( "SetDataSetValue_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"SetDataSetValue_id" BIGINT CHECK ( "SetDataSetValue_id" >= 0 ) ,
-- NESTED KEY : "DataSetDirectory" ( "DataSetDirectory_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"DataSetDirectory_id" BIGINT CHECK ( "DataSetDirectory_id" >= 0 ) ,
-- NESTED KEY : "ConfDataSet" ( "ConfDataSet_id", DELEGATED TO "tServiceForConfDataSet_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfDataSet_id" BIGINT CHECK ( "ConfDataSet_id" >= 0 ) ,
-- NESTED KEY : "DynDataSet" ( "DynDataSet_id", DELEGATED TO "tServiceWithMaxAndMaxAttributes_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"DynDataSet_id" BIGINT CHECK ( "DynDataSet_id" >= 0 ) ,
-- NESTED KEY : "ReadWrite" ( "ReadWrite_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ReadWrite_id" BIGINT CHECK ( "ReadWrite_id" >= 0 ) ,
-- NESTED KEY : "TimerActivatedControl" ( "TimerActivatedControl_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"TimerActivatedControl_id" BIGINT CHECK ( "TimerActivatedControl_id" >= 0 ) ,
-- NESTED KEY : "ConfReportControl" ( "ConfReportControl_id", DELEGATED TO "tServiceConfReportControl_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfReportControl_id" BIGINT CHECK ( "ConfReportControl_id" >= 0 ) ,
-- NESTED KEY : "GetCBValues" ( "GetCBValues_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GetCBValues_id" BIGINT CHECK ( "GetCBValues_id" >= 0 ) ,
-- NESTED KEY : "ConfLogControl" ( "ConfLogControl_id", DELEGATED TO "tServiceWithMaxNonZero_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfLogControl_id" BIGINT CHECK ( "ConfLogControl_id" >= 0 ) ,
-- NESTED KEY : "ReportSettings" ( "ReportSettings_id", DELEGATED TO "tReportSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ReportSettings_id" BIGINT CHECK ( "ReportSettings_id" >= 0 ) ,
-- NESTED KEY : "LogSettings" ( "LogSettings_id", DELEGATED TO "tLogSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"LogSettings_id" BIGINT CHECK ( "LogSettings_id" >= 0 ) ,
-- NESTED KEY : "GSESettings" ( "GSESettings_id", DELEGATED TO "tGSESettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GSESettings_id" BIGINT CHECK ( "GSESettings_id" >= 0 ) ,
-- NESTED KEY : "SMVSettings" ( "SMVSettings_id", DELEGATED TO "tSMVSettings_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"SMVSettings_id" BIGINT CHECK ( "SMVSettings_id" >= 0 ) ,
-- NESTED KEY : "GSEDir" ( "GSEDir_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GSEDir_id" BIGINT CHECK ( "GSEDir_id" >= 0 ) ,
-- NESTED KEY : "GOOSE" ( "GOOSE_id", DELEGATED TO "tGOOSEcapabilities_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GOOSE_id" BIGINT CHECK ( "GOOSE_id" >= 0 ) ,
-- NESTED KEY : "GSSE" ( "GSSE_id", DELEGATED TO "tServiceWithMax_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"GSSE_id" BIGINT CHECK ( "GSSE_id" >= 0 ) ,
-- NESTED KEY : "SMVsc" ( "SMVsc_id", DELEGATED TO "tSMVsc_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"SMVsc_id" BIGINT CHECK ( "SMVsc_id" >= 0 ) ,
-- NESTED KEY : "FileHandling" ( "FileHandling_id", DELEGATED TO "tFileHandling_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"FileHandling_id" BIGINT CHECK ( "FileHandling_id" >= 0 ) ,
-- NESTED KEY : "ConfLNs" ( "ConfLNs_id", DELEGATED TO "tConfLNs_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfLNs_id" BIGINT CHECK ( "ConfLNs_id" >= 0 ) ,
-- NESTED KEY : "ClientServices" ( "ClientServices_id", DELEGATED TO "tClientServices_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ClientServices_id" BIGINT CHECK ( "ClientServices_id" >= 0 ) ,
-- NESTED KEY : "ConfLdName" ( "ConfLdName_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfLdName_id" BIGINT CHECK ( "ConfLdName_id" >= 0 ) ,
-- NESTED KEY : "SupSubscription" ( "SupSubscription_id", DELEGATED TO "tSupSubscription_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"SupSubscription_id" BIGINT CHECK ( "SupSubscription_id" >= 0 ) ,
-- NESTED KEY : "ConfSigRef" ( "ConfSigRef_id", DELEGATED TO "tServiceWithMaxNonZero_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ConfSigRef_id" BIGINT CHECK ( "ConfSigRef_id" >= 0 ) ,
-- NESTED KEY : "ValueHandling" ( "ValueHandling_id", DELEGATED TO "tValueHandling_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"ValueHandling_id" BIGINT CHECK ( "ValueHandling_id" >= 0 ) ,
-- NESTED KEY : "RedProt" ( "RedProt_id", DELEGATED TO "tRedProt_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"RedProt_id" BIGINT CHECK ( "RedProt_id" >= 0 ) ,
-- NESTED KEY : "TimeSyncProt" ( "TimeSyncProt_id", DELEGATED TO "tTimeSyncProt_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"TimeSyncProt_id" BIGINT CHECK ( "TimeSyncProt_id" >= 0 ) ,
-- NESTED KEY : "CommProt" ( "CommProt_id", DELEGATED TO "tCommProt_id" ), PARENT NODE : Services, ANCESTOR NODE : AccessPoint
	"CommProt_id" BIGINT CHECK ( "CommProt_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="32"
-- xs:restriction/xs:pattern="[1-9]\d\d+"
	"nameLength" TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tKDC" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tKDC_id" BIGINT CHECK ( "tKDC_id" >= 0 ) ,
-- FOREIGN KEY : "KDC" ( "KDC_id" )
	"KDC_id" BIGINT CHECK ( "KDC_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "iedName" ( "iedName_id", DELEGATED TO "tIEDName_id" ), PARENT NODE : KDC
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "apName" ( "apName_id", DELEGATED TO "tAccessPointName_id" ), PARENT NODE : KDC
	"apName_id" BIGINT CHECK ( "apName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServiceWithOptionalMax" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceWithOptionalMax_id" BIGINT CHECK ( "tServiceWithOptionalMax_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "DynAssociation" ( "DynAssociation_id" )
	"DynAssociation_id" BIGINT CHECK ( "DynAssociation_id" >= 0 ) CONSTRAINT FK_tServiceWithOptionalMax_DynAssociation REFERENCES "DynAssociation" ( "DynAssociation_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
	max INTEGER CHECK ( max >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSettingGroups" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSettingGroups_id" BIGINT CHECK ( "tSettingGroups_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "SettingGroups" ( "SettingGroups_id" )
	"SettingGroups_id" BIGINT CHECK ( "SettingGroups_id" >= 0 ) CONSTRAINT FK_tSettingGroups_SettingGroups REFERENCES "SettingGroups" ( "SettingGroups_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "SGEdit" ( "SGEdit_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : SettingGroups, ANCESTOR NODE : Services
	"SGEdit_id" BIGINT CHECK ( "SGEdit_id" >= 0 ) ,
-- NESTED KEY : "ConfSG" ( "ConfSG_id", DELEGATED TO "tServiceYesNo_id" ), PARENT NODE : SettingGroups, ANCESTOR NODE : Services
	"ConfSG_id" BIGINT CHECK ( "ConfSG_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServiceYesNo" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceYesNo_id" BIGINT CHECK ( "tServiceYesNo_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "GetDirectory" ( "GetDirectory_id" )
	"GetDirectory_id" BIGINT CHECK ( "GetDirectory_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_GetDirectory REFERENCES "GetDirectory" ( "GetDirectory_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "GetDataObjectDefinition" ( "GetDataObjectDefinition_id" )
	"GetDataObjectDefinition_id" BIGINT CHECK ( "GetDataObjectDefinition_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_GetDataObjectDefinition REFERENCES "GetDataObjectDefinition" ( "GetDataObjectDefinition_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "DataObjectDirectory" ( "DataObjectDirectory_id" )
	"DataObjectDirectory_id" BIGINT CHECK ( "DataObjectDirectory_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_DataObjectDirectory REFERENCES "DataObjectDirectory" ( "DataObjectDirectory_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "GetDataSetValue" ( "GetDataSetValue_id" )
	"GetDataSetValue_id" BIGINT CHECK ( "GetDataSetValue_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_GetDataSetValue REFERENCES "GetDataSetValue" ( "GetDataSetValue_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "SetDataSetValue" ( "SetDataSetValue_id" )
	"SetDataSetValue_id" BIGINT CHECK ( "SetDataSetValue_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_SetDataSetValue REFERENCES "SetDataSetValue" ( "SetDataSetValue_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "DataSetDirectory" ( "DataSetDirectory_id" )
	"DataSetDirectory_id" BIGINT CHECK ( "DataSetDirectory_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_DataSetDirectory REFERENCES "DataSetDirectory" ( "DataSetDirectory_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "ReadWrite" ( "ReadWrite_id" )
	"ReadWrite_id" BIGINT CHECK ( "ReadWrite_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_ReadWrite REFERENCES "ReadWrite" ( "ReadWrite_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "TimerActivatedControl" ( "TimerActivatedControl_id" )
	"TimerActivatedControl_id" BIGINT CHECK ( "TimerActivatedControl_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_TimerActivatedControl REFERENCES "TimerActivatedControl" ( "TimerActivatedControl_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "GetCBValues" ( "GetCBValues_id" )
	"GetCBValues_id" BIGINT CHECK ( "GetCBValues_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_GetCBValues REFERENCES "GetCBValues" ( "GetCBValues_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "GSEDir" ( "GSEDir_id" )
	"GSEDir_id" BIGINT CHECK ( "GSEDir_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_GSEDir REFERENCES "GSEDir" ( "GSEDir_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "ConfLdName" ( "ConfLdName_id" )
	"ConfLdName_id" BIGINT CHECK ( "ConfLdName_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_ConfLdName REFERENCES "ConfLdName" ( "ConfLdName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tFileHandling" ( "tFileHandling_id" )
	"tFileHandling_id" BIGINT CHECK ( "tFileHandling_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_tFileHandling REFERENCES "tFileHandling" ( "tFileHandling_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tTimeSyncProt" ( "tTimeSyncProt_id" )
	"tTimeSyncProt_id" BIGINT CHECK ( "tTimeSyncProt_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_tTimeSyncProt REFERENCES "tTimeSyncProt" ( "tTimeSyncProt_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tCommProt" ( "tCommProt_id" )
	"tCommProt_id" BIGINT CHECK ( "tCommProt_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_tCommProt REFERENCES "tCommProt" ( "tCommProt_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "SGEdit" ( "SGEdit_id" )
	"SGEdit_id" BIGINT CHECK ( "SGEdit_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_SGEdit REFERENCES "SGEdit" ( "SGEdit_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "ConfSG" ( "ConfSG_id" )
	"ConfSG_id" BIGINT CHECK ( "ConfSG_id" >= 0 ) CONSTRAINT FK_tServiceYesNo_ConfSG REFERENCES "ConfSG" ( "ConfSG_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServiceWithMaxNonZero" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceWithMaxNonZero_id" BIGINT CHECK ( "tServiceWithMaxNonZero_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ConfLogControl" ( "ConfLogControl_id" )
	"ConfLogControl_id" BIGINT CHECK ( "ConfLogControl_id" >= 0 ) CONSTRAINT FK_tServiceWithMaxNonZero_ConfLogControl REFERENCES "ConfLogControl" ( "ConfLogControl_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "ConfSigRef" ( "ConfSigRef_id" )
	"ConfSigRef_id" BIGINT CHECK ( "ConfSigRef_id" >= 0 ) CONSTRAINT FK_tServiceWithMaxNonZero_ConfSigRef REFERENCES "ConfSigRef" ( "ConfSigRef_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- xs:restriction/xs:minExclusive="0"
	max INTEGER CHECK ( max > 0 ) NOT NULL
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServiceWithMax" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceWithMax_id" BIGINT CHECK ( "tServiceWithMax_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "GSSE" ( "GSSE_id" )
	"GSSE_id" BIGINT CHECK ( "GSSE_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_GSSE REFERENCES "GSSE" ( "GSSE_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
	max INTEGER CHECK ( max >= 0 ) NOT NULL ,
-- FOREIGN KEY : "tServiceConfReportControl" ( "tServiceConfReportControl_id" )
	"tServiceConfReportControl_id" BIGINT CHECK ( "tServiceConfReportControl_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_tServiceConfReportControl REFERENCES "tServiceConfReportControl" ( "tServiceConfReportControl_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tServiceWithMaxAndMaxAttributes" ( "tServiceWithMaxAndMaxAttributes_id" )
	"tServiceWithMaxAndMaxAttributes_id" BIGINT CHECK ( "tServiceWithMaxAndMaxAttributes_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_tServiceWithMaxAndMaxAttributes REFERENCES "tServiceWithMaxAndMaxAttributes" ( "tServiceWithMaxAndMaxAttributes_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tServiceWithMaxAndModify" ( "tServiceWithMaxAndModify_id" )
	"tServiceWithMaxAndModify_id" BIGINT CHECK ( "tServiceWithMaxAndModify_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_tServiceWithMaxAndModify REFERENCES "tServiceWithMaxAndModify" ( "tServiceWithMaxAndModify_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tGOOSEcapabilities" ( "tGOOSEcapabilities_id" )
	"tGOOSEcapabilities_id" BIGINT CHECK ( "tGOOSEcapabilities_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_tGOOSEcapabilities REFERENCES "tGOOSEcapabilities" ( "tGOOSEcapabilities_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tSMVsc" ( "tSMVsc_id" )
	"tSMVsc_id" BIGINT CHECK ( "tSMVsc_id" >= 0 ) CONSTRAINT FK_tServiceWithMax_tSMVsc REFERENCES "tSMVsc" ( "tSMVsc_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tConfLNs" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tConfLNs_id" BIGINT CHECK ( "tConfLNs_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ConfLNs" ( "ConfLNs_id" )
	"ConfLNs_id" BIGINT CHECK ( "ConfLNs_id" >= 0 ) CONSTRAINT FK_tConfLNs_ConfLNs REFERENCES "ConfLNs" ( "ConfLNs_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- @default="false"
	"fixPrefix" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"fixLnInst" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tClientServices" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tClientServices_id" BIGINT CHECK ( "tClientServices_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ClientServices" ( "ClientServices_id" )
	"ClientServices_id" BIGINT CHECK ( "ClientServices_id" >= 0 ) CONSTRAINT FK_tClientServices_ClientServices REFERENCES "ClientServices" ( "ClientServices_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "TimeSyncProt" ( "TimeSyncProt_id", DELEGATED TO "tTimeSyncProt_id" ), PARENT NODE : ClientServices, ANCESTOR NODE : Services
	"TimeSyncProt_id" BIGINT CHECK ( "TimeSyncProt_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	goose BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	gsse BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"bufReport" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"unbufReport" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"readLog" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	sv BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"supportsLdName" BOOLEAN ,
-- ATTRIBUTE
	"maxAttributes" INTEGER CHECK ( "maxAttributes" >= 0 ) ,
-- ATTRIBUTE
	"maxReports" INTEGER CHECK ( "maxReports" >= 0 ) ,
-- ATTRIBUTE
	"maxGOOSE" INTEGER CHECK ( "maxGOOSE" >= 0 ) ,
-- ATTRIBUTE
	"maxSMV" INTEGER CHECK ( "maxSMV" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tSupSubscription" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tSupSubscription_id" BIGINT CHECK ( "tSupSubscription_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "SupSubscription" ( "SupSubscription_id" )
	"SupSubscription_id" BIGINT CHECK ( "SupSubscription_id" >= 0 ) CONSTRAINT FK_tSupSubscription_SupSubscription REFERENCES "SupSubscription" ( "SupSubscription_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
	"maxGo" INTEGER CHECK ( "maxGo" >= 0 ) NOT NULL ,
-- ATTRIBUTE
	"maxSv" INTEGER CHECK ( "maxSv" >= 0 ) NOT NULL
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tValueHandling" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tValueHandling_id" BIGINT CHECK ( "tValueHandling_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "ValueHandling" ( "ValueHandling_id" )
	"ValueHandling_id" BIGINT CHECK ( "ValueHandling_id" >= 0 ) CONSTRAINT FK_tValueHandling_ValueHandling REFERENCES "ValueHandling" ( "ValueHandling_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- @default="false"
	"setToRO" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tRedProt" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tRedProt_id" BIGINT CHECK ( "tRedProt_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "RedProt" ( "RedProt_id" )
	"RedProt_id" BIGINT CHECK ( "RedProt_id" >= 0 ) CONSTRAINT FK_tRedProt_RedProt REFERENCES "RedProt" ( "RedProt_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- @default="false"
	hsr BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	prp BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	rstp BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tCert" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tCert_id" BIGINT CHECK ( "tCert_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "Subject" ( "Subject_id" )
	"Subject_id" BIGINT CHECK ( "Subject_id" >= 0 ) CONSTRAINT FK_tCert_Subject REFERENCES "Subject" ( "Subject_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "IssuerName" ( "IssuerName_id" )
	"IssuerName_id" BIGINT CHECK ( "IssuerName_id" >= 0 ) CONSTRAINT FK_tCert_IssuerName REFERENCES "IssuerName" ( "IssuerName_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- xs:restriction/xs:minLength="4"
-- xs:restriction/xs:pattern="CN=.+"
	"commonName" TEXT NOT NULL ,
-- ATTRIBUTE
-- xs:restriction/xs:minLength="1"
	"idHierarchy" TEXT NOT NULL
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: true, list: false, bridge: false, virtual: false
--
CREATE TABLE "Authentication" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Authentication_id" BIGINT CHECK ( "Authentication_id" >= 0 ) ,
-- FOREIGN KEY : "tServer" ( "tServer_id" )
	"tServer_id" BIGINT CHECK ( "tServer_id" >= 0 ) CONSTRAINT FK_Authentication_tServer REFERENCES "tServer" ( "tServer_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- @default="true"
	none BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	password BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	weak BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	strong BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	certificate BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAssociation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tAssociation_id" BIGINT CHECK ( "tAssociation_id" >= 0 ) ,
-- FOREIGN KEY : "Association" ( "Association_id" )
	"Association_id" BIGINT CHECK ( "Association_id" >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "iedName" ( "iedName_id", DELEGATED TO "tIEDName_id" )
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" )
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" )
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInstOrEmpty_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : kind ( kind_id, DELEGATED TO "tAssociationKindEnum_id" ), PARENT NODE : Association
	kind_id BIGINT CHECK ( kind_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "associationID" ( "associationID_id", DELEGATED TO "tAssociationID_id" ), PARENT NODE : Association
	"associationID_id" BIGINT CHECK ( "associationID_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tFCDA" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tFCDA_id" BIGINT CHECK ( "tFCDA_id" >= 0 ) ,
-- FOREIGN KEY : "FCDA" ( "FCDA_id" )
	"FCDA_id" BIGINT CHECK ( "FCDA_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" ), PARENT NODE : FCDA
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" ), PARENT NODE : FCDA
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : FCDA
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInst_id" ), PARENT NODE : FCDA
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "doName" ( "doName_id", DELEGATED TO "tFullDOName_id" ), PARENT NODE : FCDA
	"doName_id" BIGINT CHECK ( "doName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "daName" ( "daName_id", DELEGATED TO "tFullAttributeName_id" ), PARENT NODE : FCDA
	"daName_id" BIGINT CHECK ( "daName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : fc ( fc_id, DELEGATED TO "tFCEnum_id" ), PARENT NODE : FCDA
	fc_id BIGINT CHECK ( fc_id >= 0 ) ,
-- ATTRIBUTE
	ix INTEGER CHECK ( ix >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tTrgOps" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tTrgOps_id" BIGINT CHECK ( "tTrgOps_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "TrgOps" ( "TrgOps_id" )
	"TrgOps_id" BIGINT CHECK ( "TrgOps_id" >= 0 ) CONSTRAINT FK_tTrgOps_TrgOps REFERENCES "TrgOps" ( "TrgOps_id" ) ON DELETE CASCADE ,
-- ATTRIBUTE
-- @default="false"
	dchg BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	qchg BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	dupd BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	period BOOLEAN ,
-- ATTRIBUTE
-- @default="true"
	gi BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: true, list: false, bridge: false, virtual: false
--
CREATE TABLE "OptFields" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"OptFields_id" BIGINT CHECK ( "OptFields_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "tReportControl" ( "tReportControl_id" )
	"tReportControl_id" BIGINT CHECK ( "tReportControl_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"seqNum" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"timeStamp" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"dataSet" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"reasonCode" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"dataRef" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"entryID" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"configRef" BOOLEAN ,
-- ATTRIBUTE
-- @default="true"
	"bufOvfl" BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tClientLN" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tClientLN_id" BIGINT CHECK ( "tClientLN_id" >= 0 ) ,
-- FOREIGN KEY : "ClientLN" ( "ClientLN_id" )
	"ClientLN_id" BIGINT CHECK ( "ClientLN_id" >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "iedName" ( "iedName_id", DELEGATED TO "tIEDName_id" )
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" )
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" )
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInstOrEmpty_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "apRef" ( "apRef_id", DELEGATED TO "tAccessPointName_id" ), PARENT NODE : ClientLN
	"apRef_id" BIGINT CHECK ( "apRef_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tExtRef" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tExtRef_id" BIGINT CHECK ( "tExtRef_id" >= 0 ) ,
-- FOREIGN KEY : "ExtRef" ( "ExtRef_id" )
	"ExtRef_id" BIGINT CHECK ( "ExtRef_id" >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "iedName" ( "iedName_id", DELEGATED TO "tIEDNameOrRelative_id" ), PARENT NODE : ExtRef
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "ldInst" ( "ldInst_id", DELEGATED TO "tLDInst_id" ), PARENT NODE : ExtRef
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : prefix ( prefix_id, DELEGATED TO "tPrefix_id" ), PARENT NODE : ExtRef
	prefix_id BIGINT CHECK ( prefix_id >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnClass" ( "lnClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : ExtRef
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "lnInst" ( "lnInst_id", DELEGATED TO "tLNInst_id" ), PARENT NODE : ExtRef
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "doName" ( "doName_id", DELEGATED TO "tFullDOName_id" ), PARENT NODE : ExtRef
	"doName_id" BIGINT CHECK ( "doName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "daName" ( "daName_id", DELEGATED TO "tFullAttributeName_id" ), PARENT NODE : ExtRef
	"daName_id" BIGINT CHECK ( "daName_id" >= 0 ) ,
-- ATTRIBUTE
	"intAddr" TEXT ,
-- NESTED KEY AS ATTRIBUTE : "serviceType" ( "serviceType_id", DELEGATED TO "tServiceType_id" ), PARENT NODE : ExtRef
	"serviceType_id" BIGINT CHECK ( "serviceType_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "srcLDInst" ( "srcLDInst_id", DELEGATED TO "tLDInst_id" ), PARENT NODE : ExtRef
	"srcLDInst_id" BIGINT CHECK ( "srcLDInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "srcPrefix" ( "srcPrefix_id", DELEGATED TO "tPrefix_id" ), PARENT NODE : ExtRef
	"srcPrefix_id" BIGINT CHECK ( "srcPrefix_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "srcLNClass" ( "srcLNClass_id", DELEGATED TO "tLNClassEnum_id" ), PARENT NODE : ExtRef
	"srcLNClass_id" BIGINT CHECK ( "srcLNClass_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "srcLNInst" ( "srcLNInst_id", DELEGATED TO "tLNInst_id" ), PARENT NODE : ExtRef
	"srcLNInst_id" BIGINT CHECK ( "srcLNInst_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "srcCBName" ( "srcCBName_id", DELEGATED TO "tCBName_id" ), PARENT NODE : ExtRef
	"srcCBName_id" BIGINT CHECK ( "srcCBName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tProtocol" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tProtocol_id" BIGINT CHECK ( "tProtocol_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT
	content TEXT ,
-- ATTRIBUTE
	"mustUnderstand" BOOLEAN CHECK ( "mustUnderstand" = 'true' ) NOT NULL ,
-- FOREIGN KEY : "Protocol" ( "Protocol_id" )
	"Protocol_id" BIGINT CHECK ( "Protocol_id" >= 0 ) CONSTRAINT FK_tProtocol_Protocol REFERENCES "Protocol" ( "Protocol_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin child, content: true, list: false, bridge: false, virtual: false
--
CREATE TABLE "SmvOpts" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"SmvOpts_id" BIGINT CHECK ( "SmvOpts_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "tSampledValueControl" ( "tSampledValueControl_id" )
	"tSampledValueControl_id" BIGINT CHECK ( "tSampledValueControl_id" >= 0 ) ,
-- ATTRIBUTE
-- @default="false"
	"refreshTime" BOOLEAN ,
-- ATTRIBUTE
	"sampleSynchronized" BOOLEAN CHECK ( "sampleSynchronized" = 'true' ) NOT NULL ,
-- ATTRIBUTE
-- @default="false"
	"sampleRate" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	"dataSet" BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	security BOOLEAN ,
-- ATTRIBUTE
-- @default="false"
	timestamp BOOLEAN
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_IED.xsd
-- type: admin root, content: false, list: false, bridge: false, virtual: true
--
CREATE TABLE "tServiceSettings" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tServiceSettings_id" BIGINT CHECK ( "tServiceSettings_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "cbName" ( "cbName_id", DELEGATED TO "tServiceSettingsNoDynEnum_id" ), PARENT NODE : SMVSettings
	"cbName_id" BIGINT CHECK ( "cbName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "datSet" ( "datSet_id", DELEGATED TO "tServiceSettingsEnum_id" ), PARENT NODE : SMVSettings
	"datSet_id" BIGINT CHECK ( "datSet_id" >= 0 ) ,
-- FOREIGN KEY : "tReportSettings" ( "tReportSettings_id" )
	"tReportSettings_id" BIGINT CHECK ( "tReportSettings_id" >= 0 ) CONSTRAINT FK_tServiceSettings_tReportSettings REFERENCES "tReportSettings" ( "tReportSettings_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tLogSettings" ( "tLogSettings_id" )
	"tLogSettings_id" BIGINT CHECK ( "tLogSettings_id" >= 0 ) CONSTRAINT FK_tServiceSettings_tLogSettings REFERENCES "tLogSettings" ( "tLogSettings_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tGSESettings" ( "tGSESettings_id" )
	"tGSESettings_id" BIGINT CHECK ( "tGSESettings_id" >= 0 ) CONSTRAINT FK_tServiceSettings_tGSESettings REFERENCES "tGSESettings" ( "tGSESettings_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tSMVSettings" ( "tSMVSettings_id" )
	"tSMVSettings_id" BIGINT CHECK ( "tSMVSettings_id" >= 0 ) CONSTRAINT FK_tServiceSettings_tSMVSettings REFERENCES "tSMVSettings" ( "tSMVSettings_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd SCL.xsd
-- type: extern root, content: false, list: false, bridge: true, virtual: false
--
CREATE TABLE "DataTypeTemplates" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"DataTypeTemplates_id" BIGINT CHECK ( "DataTypeTemplates_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tDataTypeTemplates" ( "tDataTypeTemplates_id" )
	"tDataTypeTemplates_id" BIGINT CHECK ( "tDataTypeTemplates_id" >= 0 ) ,
-- FOREIGN KEY : "SCL" ( "SCL_id" )
	"SCL_id" BIGINT CHECK ( "SCL_id" >= 0 ) CONSTRAINT FK_DataTypeTemplates_SCL REFERENCES "SCL" ( "SCL_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tDataTypeTemplates" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tDataTypeTemplates_id" BIGINT CHECK ( "tDataTypeTemplates_id" >= 0 ) PRIMARY KEY ,
-- FOREIGN KEY : "DataTypeTemplates" ( "DataTypeTemplates_id" )
	"DataTypeTemplates_id" BIGINT CHECK ( "DataTypeTemplates_id" >= 0 ) CONSTRAINT FK_tDataTypeTemplates_DataTypeTemplates REFERENCES "DataTypeTemplates" ( "DataTypeTemplates_id" ) ON DELETE CASCADE ,
-- NESTED KEY : "LNodeType" ( "LNodeType_id", DELEGATED TO "tLNodeType_id" ), PARENT NODE : DataTypeTemplates
	"LNodeType_id" BIGINT CHECK ( "LNodeType_id" >= 0 ) ,
-- NESTED KEY : "DOType" ( "DOType_id", DELEGATED TO "tDOType_id" ), PARENT NODE : DataTypeTemplates
	"DOType_id" BIGINT CHECK ( "DOType_id" >= 0 ) ,
-- NESTED KEY : "DAType" ( "DAType_id", DELEGATED TO "tDAType_id" ), PARENT NODE : DataTypeTemplates
	"DAType_id" BIGINT CHECK ( "DAType_id" >= 0 ) ,
-- NESTED KEY : "EnumType" ( "EnumType_id", DELEGATED TO "tEnumType_id" ), PARENT NODE : DataTypeTemplates
	"EnumType_id" BIGINT CHECK ( "EnumType_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_DataTypeTemplates.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tEnumVal" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tEnumVal_id" BIGINT CHECK ( "tEnumVal_id" >= 0 ) ,
-- FOREIGN KEY : "EnumVal" ( "EnumVal_id" )
	"EnumVal_id" BIGINT CHECK ( "EnumVal_id" >= 0 ) ,
-- SIMPLE CONTENT
	content TEXT ,
-- ATTRIBUTE
	ord INTEGER NOT NULL ,
-- ATTRIBUTE
	"desc" TEXT
);

--COMMENTS to keep PostGraphile Happy
COMMENT ON TABLE "public"."ConnectivityNode" IS E'@name ConnectivityNodeItem';
COMMENT ON TABLE "public"."iedName" IS E'@name iedNameItem';
COMMENT ON TABLE "public"."optFields" IS E'@name optFieldsItem';
COMMENT ON COLUMN "public"."tSMVSettings"."samplesPerSec" IS E'@name tSMVSettingsSamplesPerSecItem';
COMMENT ON COLUMN "public"."tControlWithIEDName"."IEDName_id" IS E'@name IEDNameIdItem';
COMMENT ON COLUMN "public"."tIEDName"."IEDName_id" IS E'@name TIEDNameId';
COMMENT ON TABLE "public"."trgOps" IS E'@name trgOpsItem';

-- Erroneous constraints
--TODO Add missing constraints

-- (derived from xs:keyref[@name='ref2DataSetReportLN0'])
--ALTER TABLE "ReportControl" ADD CONSTRAINT KR_ref2DataSetReportLN0 FOREIGN KEY ( "datSet" ) REFERENCES "DataSet" ( name ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2DataSetLogLN0'])
--ALTER TABLE "LogControl" ADD CONSTRAINT KR_ref2DataSetLogLN0 FOREIGN KEY ( "datSet" ) REFERENCES "DataSet" ( name ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2DataSetGSELN0'])
--ALTER TABLE "GSEControl" ADD CONSTRAINT KR_ref2DataSetGSELN0 FOREIGN KEY ( "datSet" ) REFERENCES "DataSet" ( name ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2DataSetSVLN0'])
--ALTER TABLE "SampledValueControl" ADD CONSTRAINT KR_ref2DataSetSVLN0 FOREIGN KEY ( "datSet" ) REFERENCES "DataSet" ( name ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2LDeviceInDataSetForFCDAinLN'])
--ALTER TABLE "FCDA" ADD CONSTRAINT KR_ref2LDeviceInDataSetForFCDAinLN FOREIGN KEY ( "ldInst" ) REFERENCES "LDevice" ( inst ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ServerAtRef2AccessPoint'])
--ALTER TABLE "ServerAt" ADD CONSTRAINT KR_ServerAtRef2AccessPoint FOREIGN KEY ( "apName" ) REFERENCES "AccessPoint" ( name ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2DOType'])
--ALTER TABLE "DO" ADD CONSTRAINT KR_ref2DOType FOREIGN KEY ( type ) REFERENCES "DOType" ( id ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2DOTypeForSDO'])
--ALTER TABLE "SDO" ADD CONSTRAINT KR_ref2DOTypeForSDO FOREIGN KEY ( type ) REFERENCES "DOType" ( id ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2LNodeTypeDomain1'])
--ALTER TABLE "LN" ADD CONSTRAINT KR_ref2LNodeTypeDomain1_0 FOREIGN KEY ( "lnType" ) REFERENCES "LNodeType" ( id ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2LNodeTypeDomain1'])
--ALTER TABLE "LN" ADD CONSTRAINT KR_ref2LNodeTypeDomain1_1 FOREIGN KEY ( "lnClass" ) REFERENCES "LNodeType" ( "lnClass" ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2LNodeTypeLLN0'])
--ALTER TABLE "LN0" ADD CONSTRAINT KR_ref2LNodeTypeLLN0_0 FOREIGN KEY ( "lnType" ) REFERENCES "LNodeType" ( id ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;

-- (derived from xs:keyref[@name='ref2LNodeTypeLLN0'])
--ALTER TABLE "LN0" ADD CONSTRAINT KR_ref2LNodeTypeLLN0_1 FOREIGN KEY ( "lnClass" ) REFERENCES "LNodeType" ( "lnClass" ) ON DELETE CASCADE NOT VALID DEFERRABLE INITIALLY DEFERRED;
