--ADMMB_程式資料
SELECT
  ,MB001 AS "程式代號"
  ,MB002 AS "程式名稱"
  ,CASE 
   WHEN '1' THEN N'設定,'
   WHEN '2' THEN N'維護,'
   WHEN '3' THEN N'查詢,'
   WHEN '4' THEN N'批次,'
   WHEN '5' THEN N'單檔,'
   WHEN '6' THEN N'雙檔,'
   WHEN '7' THEN N'多檔,'
   WHEN 'A' THEN N'清單,'
   WHEN 'B' THEN N'明細,'
   WHEN 'C' THEN N'憑證,'
   WHEN 'D' THEN N'統計,'
   WHEN 'E' THEN N'銷售分析網頁,'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "類型"
  ,MB004 AS "系統代號"
  ,MB005 AS "備註"
  ,MB006 AS "資料管制"
  ,MB007 AS "執行畫面保留碼"
  ,MB009 AS "預設印表機名稱"
  ,MB010 AS "英文程式名稱"
  ,MB011 AS "越南文程式名稱"
  ,MB012 AS "馬來文程式名稱"
  ,MB013 AS "泰文程式名稱"
  ,MB014 AS "簡體中文程式名稱"
  ,MB015 AS "保留程式名稱"
  ,MB016 AS "保留程式名稱"
  ,MB017 AS "保留程式名稱"
  ,MB018 AS "保留程式名稱"

FROM ADMMB
