--BOMTK_E-BOM變更子單身檔
SELECT
  ,TK001 AS "變更單別"
  ,TK002 AS "變更單號"
  ,TK003 AS "變更單序號"
  ,TK004 AS "BOM序號"
  ,TK005 AS "元件品號"
  ,TK008 AS "組成用量"
  ,TK009 AS "底數"
  ,TK010 AS "損耗率%"
  ,TK011 AS "製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "取替代件"
  ,TK013 AS "生效日期"
  ,TK014 AS "失效日期"
  ,TK015 AS "選配預設"
  ,TK016 AS "標準成本計算"
  ,TK017 AS "插件位置"
  ,TK018 AS "變更原因"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TK020 AS "投料時距"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TK022 AS "新插件位置1"
  ,TK023 AS "新插件位置2"
  ,TK024 AS "新插件位置3"
  ,TK025 AS "新插件位置4"
  ,TK026 AS "新插件位置5"
  ,TK030 AS "新備註"
  ,TK104 AS "原BOM序號"
  ,TK105 AS "原元件品號"
  ,TK108 AS "原組成用量"
  ,TK109 AS "原底數"
  ,TK110 AS "原損耗率%"
  ,TK111 AS "原製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "原取替代件"
  ,TK113 AS "原生效日期"
  ,TK114 AS "原失效日期"
  ,TK115 AS "原選配預設"
  ,TK116 AS "原標準成本計算"
  ,TK117 AS "原插件位置"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "原材料型態"
  ,TK120 AS "原投料時距"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TK122 AS "原新插件位置1"
  ,TK123 AS "原新插件位置2"
  ,TK124 AS "原新插件位置3"
  ,TK125 AS "原新插件位置4"
  ,TK126 AS "原新插件位置5"
  ,TK130 AS "原備註"

FROM BOMTK
