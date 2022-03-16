--BOMTC_BOM 變更子單身檔
SELECT
  ,TC001 AS "變更單別"
  ,TC002 AS "變更單號"
  ,TC003 AS "變更單序號"
  ,TC004 AS "BOM序號"
  ,TC005 AS "元件品號"
  ,TC006 AS "單位"
  ,TC007 AS "小單位"
  ,TC008 AS "組成用量"
  ,TC009 AS "底數"
  ,TC010 AS "損耗率%"
  ,TC011 AS "製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "取替代件"
  ,TC013 AS "生效日期"
  ,TC014 AS "失效日期"
  ,TC015 AS "選配預設"
  ,TC016 AS "標準成本計算"
  ,TC017 AS "插件位置"
  ,TC018 AS "變更原因"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TC020 AS "投料時距"
  ,TC021 AS "新插件位置1"
  ,TC022 AS "新插件位置2"
  ,TC023 AS "新插件位置3"
  ,TC024 AS "新插件位置4"
  ,TC025 AS "新插件位置5"
  ,TC029 AS "新備註"
  ,TC032 AS "發放品"
  ,TC104 AS "原BOM序號"
  ,TC105 AS "原元件品號"
  ,TC106 AS "原單位"
  ,TC107 AS "原小單位"
  ,TC108 AS "原組成用量"
  ,TC109 AS "原底數"
  ,TC110 AS "原損耗率%"
  ,TC111 AS "原製程"
  ,CASE 
   WHEN '1' THEN N'無'
   WHEN '2' THEN N'有取代件'
   WHEN '3' THEN N'有替代件'
   ELSE ""
   END AS "原取替代件"
  ,TC113 AS "原生效日期"
  ,TC114 AS "原失效日期"
  ,TC115 AS "原選配預設"
  ,TC116 AS "原標準成本計算"
  ,TC117 AS "原插件位置"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "原材料型態"
  ,TC120 AS "原投料時距"
  ,TC121 AS "原新插件位置1"
  ,TC122 AS "原新插件位置2"
  ,TC123 AS "原新插件位置3"
  ,TC124 AS "原新插件位置4"
  ,TC125 AS "原新插件位置5"
  ,TC129 AS "原備註"
  ,TC132 AS "原發放品"

FROM BOMTC
