--BOMTJ_E-BOM變更單身檔
SELECT
  ,TJ001 AS "變更單別"
  ,TJ002 AS "變更單號"
  ,TJ003 AS "變更序號"
  ,TJ004 AS "主件品號"
  ,TJ007 AS "版次"
  ,TJ008 AS "標準批量"
  ,TJ009 AS "製令單別"
  ,TJ010 AS "變更原因"
  ,TJ011 AS "確認狀態"
  ,TJ012 AS "確認碼"
  ,TJ013 AS "新備註"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"
  ,TJ104 AS "原主件品號"
  ,TJ107 AS "原版次"
  ,TJ108 AS "原標準批量"
  ,TJ109 AS "原製令單別"
  ,TJ110 AS "原變更單別"
  ,TJ111 AS "原變更單號"
  ,TJ112 AS "原變更單序號"
  ,TJ113 AS "原備註"

FROM BOMTJ
