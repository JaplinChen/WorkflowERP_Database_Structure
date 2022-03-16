--VPAMC_請假扣款條件設定檔
SELECT
  ,MC001 AS "假別代號"
  ,MC002 AS "假別名稱"
  ,MC003 AS "須扣款"
  ,MC004 AS "請假計算單位"
  ,CASE 
   WHEN '1' THEN N'以月為累計單位'
   WHEN '2' THEN N'以年為累計單位'
   ELSE ""
   END AS "請假數量之累計方式"
  ,MC006 AS "允許不扣款之累計數量"
  ,MC007 AS "年度允許請假數量"
  ,MC008 AS "日薪者每單位扣款比率"
  ,MC009 AS "月薪者每單位扣款比率"
  ,MC010 AS "扣全勤獎金"
  ,MC011 AS "自動確認"
  ,CASE 
   WHEN '1' THEN N'警告'
   WHEN '2' THEN N'拒絕'
   ELSE ""
   END AS "假別數量檢核方式"
  ,MC015 AS "計出勤"
  ,MC017 AS "每月允許請假數量"
  ,MC018 AS "併入假別計算"
  ,MC019 AS "日薪者底薪每單位扣款比率"
  ,MC020 AS "日薪者津貼每單位扣款比率"
  ,MC021 AS "月薪者底薪每單位扣款比率"
  ,MC022 AS "月薪者津貼每單位扣款比率"
  ,CASE 
   WHEN '1' THEN N'員工底薪'
   WHEN '2' THEN N'員工出勤底薪'
   ELSE ""
   END AS "選擇底薪"
  ,MC024 AS "底薪津貼扣款比率相同"
  ,MC025 AS "日薪者扣款天數每單位扣款比率"
  ,MC026 AS "月薪者扣款天數每單位扣款比率"

FROM VPAMC
