--CSTLB_標準成本差異重估維護檔
SELECT
  ,LB001 AS "年月"
  ,LB002 AS "品號"
  ,LB003 AS "庫別"
  ,LB004 AS "月初數量"
  ,LB005 AS "舊標準單價"
  ,LB006 AS "新標準單價"
  ,LB007 AS "產生分錄"

FROM CSTLB
