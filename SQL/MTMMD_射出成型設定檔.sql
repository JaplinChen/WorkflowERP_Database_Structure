--MTMMD_射出成型設定檔
SELECT
  ,MD001 AS "模具編號"
  ,MD002 AS "機台編號"
  ,MD003 AS "備註"
  ,MD004 AS "[射出名稱1]"
  ,MD005 AS "[射出名稱2]"
  ,MD006 AS "[射出名稱3]"
  ,MD007 AS "[射出名稱4]"
  ,MD008 AS "[射出名稱5]"
  ,MD009 AS "[射出名稱6]"
  ,MD010 AS "[射出名稱7]"
  ,MD011 AS "[射出名稱8]"
  ,CASE 
   WHEN '1' THEN N'特優'
   WHEN '2' THEN N'優'
   WHEN '3' THEN N'良'
   WHEN '4' THEN N'不良'
   WHEN '5' THEN N'不堪用'
   ELSE ""
   END AS "[射出名稱9]"
  ,MD013 AS "[射出名稱10]"
  ,MD014 AS "[射出名稱11]"
  ,MD015 AS "[射出名稱12]"
  ,MD016 AS "[射出名稱13]"
  ,MD017 AS "[射出名稱14]"
  ,MD018 AS "[射出名稱15]"
  ,MD019 AS "[射出名稱16]"
  ,MD020 AS "[射出名稱17]"
  ,MD021 AS "[射出名稱18]"
  ,MD022 AS "[射出名稱19]"
  ,MD023 AS "[射出名稱20]"
  ,MD024 AS "[射出名稱21]"
  ,MD025 AS "[射出名稱22]"
  ,MD026 AS "[射出名稱23]"
  ,MD027 AS "[射出名稱24]"
  ,MD028 AS "[射出名稱25]"
  ,MD029 AS "[射出名稱26]"
  ,MD030 AS "[射出名稱27]"
  ,MD031 AS "[射出名稱28]"
  ,MD032 AS "[射出名稱29]"
  ,MD033 AS "[射出名稱30]"
  ,MD034 AS "[射出名稱31]"
  ,MD035 AS "[射出名稱32]"
  ,CASE 
   WHEN '1' THEN N'固定'
   WHEN '2' THEN N'不固定'
   ELSE ""
   END AS "[射出名稱33]"
  ,CASE 
   WHEN '1' THEN N'手動'
   WHEN '2' THEN N'半自動'
   WHEN '3' THEN N'全自動'
   WHEN '4' THEN N'取出機'
   ELSE ""
   END AS "[射出名稱34]"
  ,MD038 AS "[射出名稱35]"
  ,MD039 AS "[射出名稱36]"
  ,MD040 AS "[射出名稱37]"
  ,MD041 AS "[射出名稱38]"
  ,MD042 AS "[射出名稱39]"
  ,MD043 AS "[射出名稱40]"
  ,MD044 AS "[射出名稱41]"
  ,MD045 AS "[射出名稱42]"

FROM MTMMD
