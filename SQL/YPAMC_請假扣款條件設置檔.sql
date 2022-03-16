--YPAMC_請假扣款條件設置檔
SELECT
  ,MC001 AS "假別編號"
  ,MC002 AS "假別名稱"
  ,MC003 AS "須扣款"
  ,MC004 AS "請假計算單位"
  ,CASE 
   WHEN '1' THEN N'以月為累計單位'
   WHEN '2' THEN N'以年為累計單位'
   ELSE ""
   END AS "請假數量的累計方式"
  ,MC006 AS "允許不扣款的累計數量"
  ,MC007 AS "年度允許請假數量"
  ,MC008 AS "日薪者每單位扣款比率"
  ,MC009 AS "月薪者每單位扣款比率"
  ,MC010 AS "扣全勤獎金"

FROM YPAMC
