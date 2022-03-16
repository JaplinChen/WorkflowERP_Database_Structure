--IFBNC_轉帳媒體結構單身檔
SELECT
  ,NC001 AS "媒體編號"
  ,NC002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'首筆,'
   WHEN '2' THEN N'異動,'
   WHEN '3' THEN N'明細,'
   WHEN '4' THEN N'末筆'
   ELSE ""
   END AS "區別碼"
  ,CASE 
   WHEN '1' THEN N'固定值,'
   WHEN '2' THEN N'檔案'
   WHEN '3' THEN N'系統日'
   WHEN '4' THEN N'換行符號'
   WHEN '5' THEN N'明細末筆換行符號'
   WHEN '6' THEN N'國泰檢查碼'
   WHEN '7' THEN N'選項輸入日期'
   WHEN '8' THEN N'聯/跨行9'
   WHEN 'N' THEN N'第N項合計值'
   ELSE ""
   END AS "來源"
  ,NC005 AS "檔案代號"
  ,NC006 AS "欄位代號"
  ,NC007 AS "欄位名稱"
  ,NC008 AS "欄位型態"
  ,NC009 AS "固定數值"
  ,NC010 AS "固定文字"
  ,NC011 AS "合計階1"
  ,NC012 AS "合計階2"
  ,NC013 AS "合計階3"
  ,NC014 AS "合計階4"
  ,NC015 AS "合計階5"
  ,NC016 AS "轉出長度"
  ,NC017 AS "備註"
  ,NC018 AS "小數位數"
  ,CASE 
   WHEN '1' THEN N'左靠右補空白'
   WHEN '2' THEN N'右靠左補零'
   ELSE ""
   END AS "填空方式"
  ,NC020 AS "欄位可空白"
  ,NC021 AS "起始碼"
  ,NC022 AS "含小數點"
  ,NC025 AS "字串相接"

FROM IFBNC
