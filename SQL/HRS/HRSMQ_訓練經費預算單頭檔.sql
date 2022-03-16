--HRSMQ_訓練經費預算單頭檔
SELECT
  ,MQ001 AS "年度"
  ,MQ002 AS "部門代號"
  ,MQ003 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'每月'
   WHEN '2' THEN N'每季'
   WHEN '3' THEN N'每半年'
   WHEN '4' THEN N'每年'
   ELSE ""
   END AS "預算類別"
  ,MQ005 AS "年度經費預算"
  ,MQ006 AS "年度已用經費"
  ,MQ007 AS "備註"

FROM HRSMQ
