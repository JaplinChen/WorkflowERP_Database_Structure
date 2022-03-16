--BOMTR_BOM 用量資料單身檔
SELECT
  ,TR001 AS "工作ID"
  ,TR002 AS "主件品號"
  ,TR003 AS "BOM序號"
  ,TR004 AS "元件品號"
  ,TR005 AS "單位"
  ,TR006 AS "小單位"
  ,TR007 AS "組成用量"
  ,TR008 AS "底數"
  ,TR009 AS "損耗率%"
  ,TR010 AS "製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "取替代件"
  ,TR012 AS "生效日期"
  ,TR013 AS "失效日期"
  ,TR014 AS "選配預設"
  ,TR015 AS "標準成本計算"
  ,TR016 AS "插件位置"
  ,TR017 AS "備註"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TR019 AS "投料時距"
  ,TR020 AS "新插件位置1"
  ,TR021 AS "新插件位置2"
  ,TR022 AS "新插件位置3"
  ,TR023 AS "新插件位置4"
  ,TR024 AS "新插件位置5"
  ,TR025 AS "發放品"
  ,TR026 AS "變更原因"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TR028 AS "處理結果"

FROM BOMTR
