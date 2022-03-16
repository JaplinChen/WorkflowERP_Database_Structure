--PALMR_薪資會計科目設定單身檔
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
  ,MR003 AS "津貼扣款代號"
  ,MR004 AS "科目編號"

FROM PALMR
