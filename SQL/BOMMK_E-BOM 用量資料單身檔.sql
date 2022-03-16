--BOMMK_E-BOM 用量資料單身檔
SELECT
  ,MK001 AS "主件品號"
  ,MK002 AS "序號"
  ,MK003 AS "元件品號"
  ,MK006 AS "組成用量"
  ,MK007 AS "底數"
  ,MK008 AS "損耗率%"
  ,MK009 AS "製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "取替代件"
  ,MK011 AS "生效日期"
  ,MK012 AS "失效日期"
  ,MK013 AS "選配預設"
  ,MK014 AS "標準成本計算"
  ,MK015 AS "插件位置"
  ,MK016 AS "備註"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,MK018 AS "投料時距"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,MK020 AS "新插件位置1"
  ,MK021 AS "新插件位置2"
  ,MK022 AS "新插件位置3"
  ,MK023 AS "新插件位置4"
  ,MK024 AS "新插件位置5"

FROM BOMMK
