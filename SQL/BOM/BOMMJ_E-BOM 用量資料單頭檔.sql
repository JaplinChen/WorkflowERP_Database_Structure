--BOMMJ_E-BOM 用量資料單頭檔
SELECT
  ,MJ001 AS "主件品號"
  ,MJ004 AS "標準批量"
  ,MJ005 AS "製令單別"
  ,MJ006 AS "變更單別"
  ,MJ007 AS "變更單號"
  ,MJ008 AS "變更序號"
  ,MJ009 AS "版次"
  ,MJ010 AS "備註"
  ,MJ011 AS "更新碼"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"

FROM BOMMJ
