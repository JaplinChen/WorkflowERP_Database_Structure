--NOTTG_銀行存款存提單身檔
SELECT
  ,TG001 AS "存提單別"
  ,TG002 AS "存提單號"
  ,TG003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'轉帳'
   ELSE ""
   END AS "類別碼"
  ,TG005 AS "對象代號"
  ,TG006 AS "對方科目"
  ,TG007 AS "對象簡稱"
  ,TG008 AS "金額"
  ,TG009 AS "備註"
  ,TG010 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'公司'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'客戶'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "轉帳對象"
  ,TG012 AS "銀行行號"
  ,TG013 AS "銀行帳號"
  ,TG014 AS "手續費"
  ,CASE 
   WHEN '1' THEN N'收款人負擔'
   WHEN '2' THEN N'付款人負擔'
   ELSE ""
   END AS "手續費負擔"
  ,TG016 AS "部門"
  ,TG017 AS "幣別"
  ,TG018 AS "匯率"
  ,TG019 AS "本國幣別金額小計"

FROM NOTTG
