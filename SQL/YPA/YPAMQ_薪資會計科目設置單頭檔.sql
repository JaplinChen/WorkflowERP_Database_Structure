--YPAMQ_薪資會計科目設置單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'直接費用'
   WHEN '2' THEN N'間接費用'
   WHEN '3' THEN N'管理費用'
   WHEN '4' THEN N'銷售費用'
   WHEN '5' THEN N'研發費用'
   ELSE ""
   END AS "科目種類"
  ,CASE 
   WHEN '1' THEN N'上半月'
   WHEN '2' THEN N'下半月'
   ELSE ""
   END AS "上下半月"
  ,MQ003 AS "基本工資"
  ,MQ004 AS "加班費免稅部分"
  ,MQ005 AS "加班費課稅部分"
  ,MQ006 AS "全勤獎金"
  ,MQ007 AS "獨立發放"

FROM YPAMQ
