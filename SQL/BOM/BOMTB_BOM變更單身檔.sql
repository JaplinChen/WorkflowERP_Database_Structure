--BOMTB_BOM變更單身檔
SELECT
  ,TB001 AS "變更單別"
  ,TB002 AS "變更單號"
  ,TB003 AS "變更序號"
  ,TB004 AS "主件品號"
  ,TB005 AS "單位"
  ,TB006 AS "小單位"
  ,TB007 AS "版次"
  ,TB008 AS "標準批量"
  ,TB009 AS "製令單別"
  ,TB010 AS "變更原因"
  ,TB011 AS "確認狀態"
  ,TB012 AS "確認碼"
  ,TB013 AS "新備註"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"
  ,TB104 AS "原主件品號"
  ,TB105 AS "原單位"
  ,TB106 AS "原小單位"
  ,TB107 AS "原版次"
  ,TB108 AS "原標準批量"
  ,TB109 AS "原製令單別"
  ,TB110 AS "原變更單別"
  ,TB111 AS "原變更單號"
  ,TB112 AS "原變更單序號"
  ,TB113 AS "原備註"

FROM BOMTB
