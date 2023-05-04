--
-- PostgreSQL DDL generated from SCL_Substation.xsd using xsd2pgschema
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
--  Generated 84 tables (459 fields), 20 views (60 fields), 2 attr groups, 0 model groups in total
--  Found 34 tables (111 fields), 0 attr groups, 0 model groups in XML Schema: SCL_BaseSimpleTypes.xsd
--  Found 64 tables (194 fields), 0 attr groups, 0 model groups in XML Schema: SCL_Enums.xsd
--  Found 24 tables (124 fields), 1 attr groups, 0 model groups in XML Schema: SCL_BaseTypes.xsd
--   Orphan tables that can not be reached from the document root (use '--show-orphan-table' option for details of the orphan tables):
--    schema location: SCL_BaseSimpleTypes.xsd
--      "tPAddr", "tSclRevision", "tEmpty", "tOnlyRelativeIEDName", "tIEDNameOrRelative", "tLDName", "tLDInst", "tLNInst", "tAccessPointName", "tAssociationID", "tFullAttributeName", "tFullDOName", "tNamespaceName"
--    schema location: SCL_Enums.xsd
--      "tPredefinedPTypeEnum", "tExtensionPTypeEnum", "tPTypeEnum", "tPredefinedPTypePhysConnEnum", "tPTypePhysConnEnum", "tPredefinedAttributeNameEnum", "tAttributeNameEnum", "tPredefinedCommonConductingEquipmentEnum", "tExtensionEquipmentEnum", "tPredefinedGeneralEquipmentEnum", "tExtensionGeneralEquipmentEnum", "tServiceSettingsNoDynEnum", "tServiceSettingsEnum", "tRedProtEnum", "tSMVDeliveryEnum", "tAuthenticationEnum", "tAssociationKindEnum", "tLPHDEnum", "tLLN0Enum", "tSystemLNGroupEnum", "tDomainLNGroupAEnum", "tDomainLNGroupCEnum", "tDomainLNGroupFEnum", "tDomainLNGroupGEnum", "tDomainLNGroupIEnum", "tDomainLNGroupKEnum", "tDomainLNGroupMEnum", "tDomainLNGroupPEnum", "tDomainLNGroupQEnum", "tDomainLNGroupREnum", "tDomainLNGroupSEnum", "tDomainLNGroupTEnum", "tDomainLNGroupXEnum", "tDomainLNGroupYEnum", "tDomainLNGroupZEnum", "tDomainLNEnum", "tPredefinedLNClassEnum", "tExtensionLNClassEnum", "tExtensionCDCEnum", "tFCEnum", "tValKindEnum", "tGSEControlTypeEnum", "tRightEnum", "tSDOCount", "tDACount", "tSmpMod", "tPredefinedPhysConnTypeEnum", "tExtensionPhysConnTypeEnum", "tPhysConnTypeEnum", "tServiceType", "tPredefinedTypeOfSecurityEnum"
--    schema location: SCL_BaseTypes.xsd
--      "tVal"
--   Unnecessary tables by inlining simple type as a primitive data type:
--    schema location: SCL_BaseSimpleTypes.xsd
--      "tSclVersion", "tDataName", "tDataSetName", "tCBName", "tLogName", "tMessageID", "tSubDataName"
--    schema location: SCL_Enums.xsd
--      "tExtensionAttributeNameEnum", "tCDCEnum", "tBasicTypeEnum"
--   Namespaces:
--    http://www.w3.org/2001/XMLSchema (xs), http://www.iec.ch/61850/2003/SCL (scl)
--   Schema locations:
--    SCL_BaseSimpleTypes.xsd, SCL_Substation.xsd, SCL_Enums.xsd, SCL_BaseTypes.xsd
--   Table types:
--    0 root, 0 root children, 0 extern root, 62 admin roots, 42 admin children
--   System keys:
--    104 primary keys (50 unique constraints), 93 foreign keys, 155 nested keys (52 as attribute, 0 as attribute group)
--   User keys:
--    104 document keys, 0 serial keys, 0 xpath keys
--   Contents:
--    31 attributes (0 in-place document keys), 0 elements (0 in-place document keys), 28 simple contents (0 in-place document keys, 14 as attribute, 1 as conditional attribute)
--   Wild cards:
--    2 any elements, 2 any attributes
--   Constraints:
--    0 unique constraints from xs:key, 113 unique constraints from xs:unique, 0 foreign key constraints from xs:keyref
--

DROP TABLE IF EXISTS "tRef" CASCADE;
DROP TABLE IF EXISTS "tAnyName" CASCADE;
DROP TABLE IF EXISTS "tAcsiName" CASCADE;
DROP TABLE IF EXISTS "tRestrName1stU" CASCADE;
DROP TABLE IF EXISTS "tRestrName1stL" CASCADE;
DROP TABLE IF EXISTS "tLDInstOrEmpty" CASCADE;
DROP TABLE IF EXISTS "tPrefix" CASCADE;
DROP TABLE IF EXISTS "tLNInstOrEmpty" CASCADE;
DROP TABLE IF EXISTS "tVisibleBasicLatin" CASCADE;
DROP TABLE IF EXISTS "tLineType" CASCADE;
DROP TABLE IF EXISTS "tProcessType" CASCADE;
DROP TABLE IF EXISTS "tProcessName" CASCADE;
DROP TABLE IF EXISTS "tCommonConductingEquipmentEnum" CASCADE;
DROP TABLE IF EXISTS "tPowerTransformerEnum" CASCADE;
DROP TABLE IF EXISTS "tTransformerWindingEnum" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipmentEnum" CASCADE;
DROP TABLE IF EXISTS "tPhaseEnum" CASCADE;
DROP TABLE IF EXISTS "tLNClassEnum" CASCADE;
DROP TABLE IF EXISTS "tPredefinedCDCEnum" CASCADE;
DROP TABLE IF EXISTS "tPredefinedBasicTypeEnum" CASCADE;
DROP TABLE IF EXISTS "tUnitMultiplierEnum" CASCADE;
DROP TABLE IF EXISTS "tBaseElement" CASCADE;
DROP TABLE IF EXISTS "tAnyContentFromOtherNamespace" CASCADE;
DROP TABLE IF EXISTS "History" CASCADE;
DROP TABLE IF EXISTS "tValueWithUnit" CASCADE;
DROP TABLE IF EXISTS "tDurationInMilliSec" CASCADE;
DROP TABLE IF EXISTS "tBitRateInMbPerSec" CASCADE;
DROP TABLE IF EXISTS "tName" CASCADE;
DROP TABLE IF EXISTS "tIEDName" CASCADE;
DROP TABLE IF EXISTS "tText" CASCADE;
DROP TABLE IF EXISTS "tPrivate" CASCADE;
DROP TABLE IF EXISTS "tUnNaming" CASCADE;
DROP TABLE IF EXISTS "tNaming" CASCADE;
DROP TABLE IF EXISTS "tIDNaming" CASCADE;
DROP TABLE IF EXISTS "tHitem" CASCADE;
DROP TABLE IF EXISTS "tHeader" CASCADE;
DROP TABLE IF EXISTS "tVoltage" CASCADE;
DROP TABLE IF EXISTS "tDurationInSec" CASCADE;
DROP TABLE IF EXISTS "Private" CASCADE;
DROP TABLE IF EXISTS "Hitem" CASCADE;
DROP TABLE IF EXISTS "tLNode" CASCADE;
DROP TABLE IF EXISTS "tLNodeContainer" CASCADE;
DROP TABLE IF EXISTS "tTerminal" CASCADE;
DROP TABLE IF EXISTS name CASCADE;
DROP TABLE IF EXISTS "LNode" CASCADE;
DROP TABLE IF EXISTS "tPowerSystemResource" CASCADE;
DROP TABLE IF EXISTS "Terminal" CASCADE;
DROP TABLE IF EXISTS "tConnectivityNode" CASCADE;
DROP TABLE IF EXISTS "tEquipmentContainer" CASCADE;
DROP TABLE IF EXISTS "tEquipment" CASCADE;
DROP TABLE IF EXISTS "tSubEquipment" CASCADE;
DROP TABLE IF EXISTS "tTapChanger" CASCADE;
DROP TABLE IF EXISTS "tFunction" CASCADE;
DROP TABLE IF EXISTS "ConnectivityNode" CASCADE;
DROP TABLE IF EXISTS "tSubFunction" CASCADE;
DROP TABLE IF EXISTS "tAbstractEqFuncSubFunc" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipmentContainer" CASCADE;
DROP TABLE IF EXISTS "tPowerTransformer" CASCADE;
DROP TABLE IF EXISTS "tGeneralEquipment" CASCADE;
DROP TABLE IF EXISTS "SubEquipment" CASCADE;
DROP TABLE IF EXISTS "tAbstractConductingEquipment" CASCADE;
DROP TABLE IF EXISTS "tEqFunction" CASCADE;
DROP TABLE IF EXISTS "tVoltageLevel" CASCADE;
DROP TABLE IF EXISTS "Function" CASCADE;
DROP TABLE IF EXISTS "tSubstation" CASCADE;
DROP TABLE IF EXISTS "tBay" CASCADE;
DROP TABLE IF EXISTS "SubFunction" CASCADE;
DROP TABLE IF EXISTS "tEqSubFunction" CASCADE;
DROP TABLE IF EXISTS "tLine" CASCADE;
DROP TABLE IF EXISTS "tProcess" CASCADE;
DROP TABLE IF EXISTS "PowerTransformer" CASCADE;
DROP TABLE IF EXISTS "GeneralEquipment" CASCADE;
DROP TABLE IF EXISTS "EqFunction" CASCADE;
DROP TABLE IF EXISTS type CASCADE;
DROP TABLE IF EXISTS "tConductingEquipment" CASCADE;
DROP TABLE IF EXISTS "tTransformerWinding" CASCADE;
DROP TABLE IF EXISTS "VoltageLevel" CASCADE;
DROP TABLE IF EXISTS "Bay" CASCADE;
DROP TABLE IF EXISTS "EqSubFunction" CASCADE;
DROP TABLE IF EXISTS "Substation" CASCADE;
DROP TABLE IF EXISTS "Line" CASCADE;
DROP TABLE IF EXISTS "Process" CASCADE;
DROP TABLE IF EXISTS "TransformerWinding" CASCADE;
DROP TABLE IF EXISTS "ConductingEquipment" CASCADE;

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
-- NESTED KEY : "tConductingEquipment" ( "tConductingEquipment_id" ), PARENT NODE : Bay Function SubFunction Line Process, ANCESTOR NODE : Substation VoltageLevel Bay Process
	"tConductingEquipment_id" BIGINT CHECK ( "tConductingEquipment_id" >= 0 )
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
-- NESTED KEY : "tGeneralEquipment" ( "tGeneralEquipment_id" ), PARENT NODE : Bay Function SubFunction Process, ANCESTOR NODE : Substation VoltageLevel Bay Process
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
-- NESTED KEY : "tEqFunction" ( "tEqFunction_id" ), PARENT NODE : ConductingEquipment SubEquipment PowerTransformer TransformerWinding TapChanger GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Process TransformerWinding PowerTransformer TapChanger Line
	"tEqFunction_id" BIGINT CHECK ( "tEqFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
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
	"tProcessType_id" BIGINT CHECK ( "tProcessType_id" >= 0 )
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
-- NESTED KEY : "tVoltageLevel" ( "tVoltageLevel_id" ), PARENT NODE : Substation, ANCESTOR NODE : Process
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Substation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 ) ,
-- NESTED KEY : "tSubstation" ( "tSubstation_id" ), PARENT NODE : Process
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Line" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 ) ,
-- NESTED KEY : "tLine" ( "tLine_id" ), PARENT NODE : Process
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Process" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Process_id" BIGINT CHECK ( "Process_id" >= 0 ) ,
-- NESTED KEY : "tProcess" ( "tProcess_id" ), PARENT NODE : Process
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 )
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
-- NESTED KEY : "tEquipment" ( "tEquipment_id" ), PARENT NODE : GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Process
	"tEquipment_id" BIGINT CHECK ( "tEquipment_id" >= 0 ) ,
-- NESTED KEY : "EqFunction" ( "EqFunction_id", DELEGATED TO "tEqFunction_id" ), PARENT NODE : GeneralEquipment, ANCESTOR NODE : Bay Function SubFunction Process
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
-- NESTED KEY : "tFunction" ( "tFunction_id" ), PARENT NODE : Substation VoltageLevel Bay Process, ANCESTOR NODE : Process
	"tFunction_id" BIGINT CHECK ( "tFunction_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tSubstation" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 ) ,
-- NESTED KEY : "tEquipmentContainer" ( "tEquipmentContainer_id" ), PARENT NODE : Substation, ANCESTOR NODE : Process
	"tEquipmentContainer_id" BIGINT CHECK ( "tEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "VoltageLevel" ( "VoltageLevel_id", DELEGATED TO "tVoltageLevel_id" ), PARENT NODE : Substation, ANCESTOR NODE : Process
	"VoltageLevel_id" BIGINT CHECK ( "VoltageLevel_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : Substation, ANCESTOR NODE : Process
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- FOREIGN KEY : "Substation" ( "Substation_id" )
	"Substation_id" BIGINT CHECK ( "Substation_id" >= 0 )
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
-- NESTED KEY : "tSubFunction" ( "tSubFunction_id" ), PARENT NODE : Function SubFunction, ANCESTOR NODE : Substation VoltageLevel Bay Process
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tLine" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 ) ,
-- NESTED KEY : "tGeneralEquipmentContainer" ( "tGeneralEquipmentContainer_id" ), PARENT NODE : Line, ANCESTOR NODE : Process
	"tGeneralEquipmentContainer_id" BIGINT CHECK ( "tGeneralEquipmentContainer_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" ), PARENT NODE : Line, ANCESTOR NODE : Process
	"ConductingEquipment_id" BIGINT CHECK ( "ConductingEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConnectivityNode" ( "ConnectivityNode_id", DELEGATED TO "tConnectivityNode_id" ), PARENT NODE : Line, ANCESTOR NODE : Process
	"ConnectivityNode_id" BIGINT CHECK ( "ConnectivityNode_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : type ( type_id, DELEGATED TO "tLineType_id" ), PARENT NODE : Line
	type_id BIGINT CHECK ( type_id >= 0 ) ,
-- FOREIGN KEY : "Line" ( "Line_id" )
	"Line_id" BIGINT CHECK ( "Line_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin root, content: false, list: true, bridge: false, virtual: true
--
CREATE TABLE "tProcess" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 ) ,
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
	"tSubstation_id" BIGINT CHECK ( "tSubstation_id" >= 0 ) ,
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
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Process
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "SubFunction" ( "SubFunction_id", DELEGATED TO "tSubFunction_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Process
	"SubFunction_id" BIGINT CHECK ( "SubFunction_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Process
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "ConductingEquipment" ( "ConductingEquipment_id", DELEGATED TO "tConductingEquipment_id" ), PARENT NODE : Function, ANCESTOR NODE : Substation VoltageLevel Bay Process
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
-- NESTED KEY : "tPowerSystemResource" ( "tPowerSystemResource_id" ), PARENT NODE : Process
	"tPowerSystemResource_id" BIGINT CHECK ( "tPowerSystemResource_id" >= 0 ) ,
-- NESTED KEY : "GeneralEquipment" ( "GeneralEquipment_id", DELEGATED TO "tGeneralEquipment_id" ), PARENT NODE : Process
	"GeneralEquipment_id" BIGINT CHECK ( "GeneralEquipment_id" >= 0 ) ,
-- NESTED KEY : "Function" ( "Function_id", DELEGATED TO "tFunction_id" ), PARENT NODE : Process
	"Function_id" BIGINT CHECK ( "Function_id" >= 0 ) ,
-- FOREIGN KEY : "tLine" ( "tLine_id" )
	"tLine_id" BIGINT CHECK ( "tLine_id" >= 0 ) ,
-- FOREIGN KEY : "tProcess" ( "tProcess_id" )
	"tProcess_id" BIGINT CHECK ( "tProcess_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd
-- type: admin child, content: false, list: false, bridge: false, virtual: false
--
CREATE TABLE name (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	name_id BIGINT CHECK ( name_id >= 0 ) PRIMARY KEY ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" )
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : "tAnyName" ( "tAnyName_id" ), PARENT NODE : Terminal NeutralPoint
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 )
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
-- NESTED KEY : "tLNodeContainer" ( "tLNodeContainer_id" ), PARENT NODE : Process
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child, content: false, list: true, bridge: true, virtual: false
--
CREATE TABLE "Private" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"Private_id" BIGINT CHECK ( "Private_id" >= 0 ) ,
-- NESTED KEY : "tPrivate" ( "tPrivate_id" )
	"tPrivate_id" BIGINT CHECK ( "tPrivate_id" >= 0 )
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_BaseTypes.xsd SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAnyName" ( "tAnyName_id" ), PARENT NODE : name id lnType substationName voltageLevelName bayName cNodeName
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) CONSTRAINT FK_tName_name REFERENCES name ( name_id ) ON DELETE CASCADE ,
-- FOREIGN KEY : id ( id_id )
	id_id BIGINT CHECK ( id_id >= 0 ) ,
-- FOREIGN KEY : "lnType" ( "lnType_id" )
	"lnType_id" BIGINT CHECK ( "lnType_id" >= 0 ) ,
-- FOREIGN KEY : "substationName" ( "substationName_id" )
	"substationName_id" BIGINT CHECK ( "substationName_id" >= 0 ) ,
-- FOREIGN KEY : "voltageLevelName" ( "voltageLevelName_id" )
	"voltageLevelName_id" BIGINT CHECK ( "voltageLevelName_id" >= 0 ) ,
-- FOREIGN KEY : "bayName" ( "bayName_id" )
	"bayName_id" BIGINT CHECK ( "bayName_id" >= 0 ) ,
-- FOREIGN KEY : "cNodeName" ( "cNodeName_id" )
	"cNodeName_id" BIGINT CHECK ( "cNodeName_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: false, list: false, bridge: true, virtual: true
--
CREATE TABLE "tIEDName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tAcsiName" ( "tAcsiName_id" ), PARENT NODE : iedName, ANCESTOR NODE : LNode
	"tAcsiName_id" BIGINT CHECK ( "tAcsiName_id" >= 0 ) ,
-- FOREIGN KEY : "iedName" ( "iedName_id" )
	"iedName_id" BIGINT CHECK ( "iedName_id" >= 0 )
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
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : Text
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
-- NESTED KEY : "tAnyContentFromOtherNamespace" ( "tAnyContentFromOtherNamespace_id" ), PARENT NODE : Private
	"tAnyContentFromOtherNamespace_id" BIGINT CHECK ( "tAnyContentFromOtherNamespace_id" >= 0 ) ,
-- ATTRIBUTE
-- xs:restriction/xs:minLength="1"
	type TEXT NOT NULL ,
-- ATTRIBUTE
	source TEXT
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: true, virtual: true
--
CREATE TABLE "tUnNaming" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT ,
-- FOREIGN KEY : "tLNode" ( "tLNode_id" )
	"tLNode_id" BIGINT CHECK ( "tLNode_id" >= 0 ) ,
-- FOREIGN KEY : "tTerminal" ( "tTerminal_id" )
	"tTerminal_id" BIGINT CHECK ( "tTerminal_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd SCL_Substation.xsd
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
	"tLNodeContainer_id" BIGINT CHECK ( "tLNodeContainer_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tIDNaming" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "tBaseElement" ( "tBaseElement_id" )
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- NESTED KEY AS ATTRIBUTE : id ( id_id, DELEGATED TO "tName_id" )
	id_id BIGINT CHECK ( id_id >= 0 ) ,
-- ATTRIBUTE
	"desc" TEXT
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
DROP TYPE IF EXISTS ENUM_tHeader_nameStructure CASCADE;
CREATE TYPE ENUM_tHeader_nameStructure AS ENUM ( 'IEDName' );
CREATE TABLE "tHeader" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tHeader_id" BIGINT CHECK ( "tHeader_id" >= 0 ) PRIMARY KEY ,
-- NESTED KEY : "Text" ( "Text_id", DELEGATED TO "tText_id" )
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- NESTED KEY : "History" ( "History_id" )
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
	"nameStructure" ENUM_tHeader_nameStructure
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
	"pathName_id" BIGINT CHECK ( "pathName_id" >= 0 ) ,
-- FOREIGN KEY : "connectivityNode" ( "connectivityNode_id" )
	"connectivityNode_id" BIGINT CHECK ( "connectivityNode_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tAnyName" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tAnyName_id" BIGINT CHECK ( "tAnyName_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS CONDITIONAL ATTRIBUTE, ATTRIBUTE NODE: name
	content TEXT ,
-- FOREIGN KEY : "tName" ( "tName_id" )
	"tName_id" BIGINT CHECK ( "tName_id" >= 0 ) CONSTRAINT FK_tAnyName_tName REFERENCES "tName" ( "tName_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : name ( name_id )
	name_id BIGINT CHECK ( name_id >= 0 ) CONSTRAINT FK_tAnyName_name REFERENCES name ( name_id ) ON DELETE CASCADE
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
	"tIEDName_id" BIGINT CHECK ( "tIEDName_id" >= 0 ) CONSTRAINT FK_tAcsiName_tIEDName REFERENCES "tIEDName" ( "tIEDName_id" ) ON DELETE CASCADE
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
	content TEXT
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
	content TEXT
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
-- use '--show-orphan-table' option for details of the 'tLDInst' simpleType definition
-- use '--show-orphan-table' option for details of the 'tEmpty' simpleType definition
	content TEXT ,
-- FOREIGN KEY : "ldInst" ( "ldInst_id" )
	"ldInst_id" BIGINT CHECK ( "ldInst_id" >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tPrefix" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tPrefix_id" BIGINT CHECK ( "tPrefix_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: prefix
-- xs:restriction/xs:maxLength="11"
-- xs:restriction/xs:pattern="[A-Za-z][0-9A-Za-z_]*"
	content VARCHAR(11) ,
-- FOREIGN KEY : prefix ( prefix_id )
	prefix_id BIGINT CHECK ( prefix_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseSimpleTypes.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNInstOrEmpty" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLNInstOrEmpty_id" BIGINT CHECK ( "tLNInstOrEmpty_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: lnInst
-- xs:union/@memberTypes="tLNInst tEmpty"
-- use '--show-orphan-table' option for details of the 'tLNInst' simpleType definition
-- use '--show-orphan-table' option for details of the 'tEmpty' simpleType definition
	content TEXT ,
-- FOREIGN KEY : "lnInst" ( "lnInst_id" )
	"lnInst_id" BIGINT CHECK ( "lnInst_id" >= 0 )
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
	content TEXT
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
	"processName_id" BIGINT CHECK ( "processName_id" >= 0 )
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
-- use '--show-orphan-table' option for details of the 'tPredefinedCommonConductingEquipmentEnum' simpleType definition
-- use '--show-orphan-table' option for details of the 'tExtensionEquipmentEnum' simpleType definition
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
-- use '--show-orphan-table' option for details of the 'tPredefinedGeneralEquipmentEnum' simpleType definition
-- use '--show-orphan-table' option for details of the 'tExtensionGeneralEquipmentEnum' simpleType definition
	content TEXT ,
-- FOREIGN KEY : type ( type_id )
	type_id BIGINT CHECK ( type_id >= 0 )
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Enums.xsd SCL_Substation.xsd
-- type: admin root, content: true, list: false, bridge: false, virtual: true
--
CREATE TABLE "tLNClassEnum" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
-- PRIMARY KEY
	"tLNClassEnum_id" BIGINT CHECK ( "tLNClassEnum_id" >= 0 ) PRIMARY KEY ,
-- SIMPLE CONTENT AS ATTRIBUTE, ATTRIBUTE NODE: lnClass
-- xs:union/@memberTypes="tPredefinedLNClassEnum tExtensionLNClassEnum"
-- use '--show-orphan-table' option for details of the 'tPredefinedLNClassEnum' simpleType definition
-- use '--show-orphan-table' option for details of the 'tExtensionLNClassEnum' simpleType definition
	content TEXT ,
-- FOREIGN KEY : "lnClass" ( "lnClass_id" )
	"lnClass_id" BIGINT CHECK ( "lnClass_id" >= 0 )
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
	content ENUM_tPredefinedCDCEnum_content
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
	content ENUM_tPredefinedBasicTypeEnum_content
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
	multiplier_id BIGINT CHECK ( multiplier_id >= 0 )
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin root, content: true, list: true, bridge: false, virtual: true
--
CREATE TABLE "tBaseElement" (
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id TEXT ,
	"tBaseElement_id" BIGINT CHECK ( "tBaseElement_id" >= 0 ) ,
-- ANY ELEMENT
	any_element XML ,
-- NESTED KEY : "Text" ( "Text_id", DELEGATED TO "tText_id" )
	"Text_id" BIGINT CHECK ( "Text_id" >= 0 ) ,
-- NESTED KEY : "Private" ( "Private_id", DELEGATED TO "tPrivate_id" )
	"Private_id" BIGINT CHECK ( "Private_id" >= 0 ) ,
-- ANY ATTRIBUTE
	any_attribute XML ,
-- FOREIGN KEY : "tUnNaming" ( "tUnNaming_id" )
	"tUnNaming_id" BIGINT CHECK ( "tUnNaming_id" >= 0 ) CONSTRAINT FK_tBaseElement_tUnNaming REFERENCES "tUnNaming" ( "tUnNaming_id" ) ON DELETE CASCADE ,
-- FOREIGN KEY : "tNaming" ( "tNaming_id" )
	"tNaming_id" BIGINT CHECK ( "tNaming_id" >= 0 ) ,
-- FOREIGN KEY : "tIDNaming" ( "tIDNaming_id" )
	"tIDNaming_id" BIGINT CHECK ( "tIDNaming_id" >= 0 ) CONSTRAINT FK_tBaseElement_tIDNaming REFERENCES "tIDNaming" ( "tIDNaming_id" ) ON DELETE CASCADE
);

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
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
	"tHitem_id" BIGINT CHECK ( "tHitem_id" >= 0 )
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
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW multiplier AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	multiplier_id ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	multiplier_id AS "tUnitMultiplierEnum_id"
FROM "tValueWithUnit" WHERE multiplier_id IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	multiplier_id ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	multiplier_id AS "tUnitMultiplierEnum_id"
FROM "tVoltage" WHERE multiplier_id IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	multiplier_id ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	multiplier_id AS "tUnitMultiplierEnum_id"
FROM "tDurationInSec" WHERE multiplier_id IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	multiplier_id ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	multiplier_id AS "tUnitMultiplierEnum_id"
FROM "tDurationInMilliSec" WHERE multiplier_id IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	multiplier_id ,
-- NESTED KEY AS ATTRIBUTE : "tUnitMultiplierEnum" ( "tUnitMultiplierEnum_id" )
	multiplier_id AS "tUnitMultiplierEnum_id"
FROM "tBitRateInMbPerSec" WHERE multiplier_id IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW phase AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	phase_id ,
-- NESTED KEY AS ATTRIBUTE : "tPhaseEnum" ( "tPhaseEnum_id" ), PARENT NODE : SubEquipment
	phase_id AS "tPhaseEnum_id"
FROM "tSubEquipment" WHERE phase_id IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "ldInst" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"ldInst_id" ,
-- NESTED KEY AS ATTRIBUTE : "tLDInstOrEmpty" ( "tLDInstOrEmpty_id" ), PARENT NODE : LNode
	"ldInst_id" AS "tLDInstOrEmpty_id"
FROM "tLNode" WHERE "ldInst_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW prefix AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	prefix_id ,
-- NESTED KEY AS ATTRIBUTE : "tPrefix" ( "tPrefix_id" ), PARENT NODE : LNode
	prefix_id AS "tPrefix_id"
FROM "tLNode" WHERE prefix_id IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "lnClass" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"lnClass_id" ,
-- NESTED KEY AS ATTRIBUTE : "tLNClassEnum" ( "tLNClassEnum_id" ), PARENT NODE : LNode
	"lnClass_id" AS "tLNClassEnum_id"
FROM "tLNode" WHERE "lnClass_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "lnInst" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"lnInst_id" ,
-- NESTED KEY AS ATTRIBUTE : "tLNInstOrEmpty" ( "tLNInstOrEmpty_id" ), PARENT NODE : LNode
	"lnInst_id" AS "tLNInstOrEmpty_id"
FROM "tLNode" WHERE "lnInst_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "pathName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"pathName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tRef" ( "tRef_id" ), PARENT NODE : ConnectivityNode
	"pathName_id" AS "tRef_id"
FROM "tConnectivityNode" WHERE "pathName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "connectivityNode" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"connectivityNode_id" ,
-- NESTED KEY AS ATTRIBUTE : "tRef" ( "tRef_id" ), PARENT NODE : Terminal NeutralPoint
	"connectivityNode_id" AS "tRef_id"
FROM "tTerminal" WHERE "connectivityNode_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "processName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"processName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tProcessName" ( "tProcessName_id" ), PARENT NODE : Terminal NeutralPoint
	"processName_id" AS "tProcessName_id"
FROM "tTerminal" WHERE "processName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW id AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	id_id ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" )
	id_id AS "tName_id"
FROM "tIDNaming" WHERE id_id IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "iedName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"iedName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tIEDName" ( "tIEDName_id" ), PARENT NODE : LNode
	"iedName_id" AS "tIEDName_id"
FROM "tLNode" WHERE "iedName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "lnType" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"lnType_id" ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : LNode
	"lnType_id" AS "tName_id"
FROM "tLNode" WHERE "lnType_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "substationName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"substationName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"substationName_id" AS "tName_id"
FROM "tTerminal" WHERE "substationName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "voltageLevelName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"voltageLevelName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"voltageLevelName_id" AS "tName_id"
FROM "tTerminal" WHERE "voltageLevelName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "bayName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"bayName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"bayName_id" AS "tName_id"
FROM "tTerminal" WHERE "bayName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "cNodeName" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
-- PRIMARY KEY
	"cNodeName_id" ,
-- NESTED KEY AS ATTRIBUTE : "tName" ( "tName_id" ), PARENT NODE : Terminal NeutralPoint
	"cNodeName_id" AS "tName_id"
FROM "tTerminal" WHERE "cNodeName_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_BaseTypes.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "Text" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	"Text_id" ,
-- NESTED KEY : "tText" ( "tText_id" )
	"Text_id" AS "tText_id"
FROM "tBaseElement" WHERE "Text_id" IS NOT NULL
UNION ALL
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	"Text_id" ,
-- NESTED KEY : "tText" ( "tText_id" )
	"Text_id" AS "tText_id"
FROM "tHeader" WHERE "Text_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "Voltage" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	"Voltage_id" ,
-- NESTED KEY : "tVoltage" ( "tVoltage_id" ), PARENT NODE : VoltageLevel, ANCESTOR NODE : Substation
	"Voltage_id" AS "tVoltage_id"
FROM "tVoltageLevel" WHERE "Voltage_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "NeutralPoint" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	"NeutralPoint_id" ,
-- NESTED KEY : "tTerminal" ( "tTerminal_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"NeutralPoint_id" AS "tTerminal_id"
FROM "tTransformerWinding" WHERE "NeutralPoint_id" IS NOT NULL;

--
-- No annotation is available
-- xmlns: http://www.iec.ch/61850/2003/SCL (scl), schema location: SCL_Substation.xsd
-- type: admin child (view), content: false, list: false, bridge: true, virtual: false
--
CREATE OR REPLACE VIEW "TapChanger" AS
SELECT
-- DOCUMENT KEY is pointer to data source (aka. Entry ID)
	document_id ,
	"TapChanger_id" ,
-- NESTED KEY : "tTapChanger" ( "tTapChanger_id" ), PARENT NODE : TransformerWinding, ANCESTOR NODE : PowerTransformer
	"TapChanger_id" AS "tTapChanger_id"
FROM "tTransformerWinding" WHERE "TapChanger_id" IS NOT NULL;

