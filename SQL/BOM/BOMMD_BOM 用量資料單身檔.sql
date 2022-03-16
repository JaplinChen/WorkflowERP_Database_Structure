--BOMMD_BOM 用量資料單身檔
SELECT
  ,MD001 AS "主件品號"
  ,MD002 AS "序號"
  ,MD003 AS "元件品號"
  ,MD004 AS "單位"
  ,MD005 AS "小單位"
  ,MD006 AS "組成用量"
  ,MD007 AS "底數"
  ,MD008 AS "損耗率%"
  ,MD009 AS "製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "取替代件"
  ,MD011 AS "生效日期"
  ,MD012 AS "失效日期"
  ,MD013 AS "選配預設"
  ,MD014 AS "標準成本計算"
  ,MD015 AS "插件位置"
  ,MD016 AS "備註"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,MD018 AS "投料時距"
  ,MD019 AS "新插件位置1"
  ,MD020 AS "新插件位置2"
  ,MD021 AS "新插件位置3"
  ,MD022 AS "新插件位置4"
  ,MD023 AS "新插件位置5"
  ,MD029 AS "發放品"
  ,MD032 AS "確認碼"

FROM BOMMD
