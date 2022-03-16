--FTSMA_傳輸對象資料檔
SELECT
  ,MA001 AS "對方公司代號"
  ,MA002 AS "對方公司簡稱"
  ,MA003 AS "對方公司電話"
  ,MA004 AS "對方公司傳真"
  ,MA005 AS "對方公司聯絡人"
  ,MA006 AS "對方E-MAIL"
  ,CASE 
   WHEN '1' THEN N'總公司環境'
   WHEN '2' THEN N'分公司環境'
   ELSE ""
   END AS "本工作站屬"
  ,MA008 AS "對方FTP傳送路徑"
  ,MA009 AS "對方FTP接收路徑"
  ,MA010 AS "對方公司IP位址"
  ,MA011 AS "對方公司USERID"
  ,MA012 AS "對方公司PassWord"
  ,MA013 AS "備註"
  ,MA014 AS "匯出資料存放目錄"
  ,MA015 AS "匯入資料存放目錄"
  ,MA016 AS "匯出入LOG存放目錄"
  ,MA017 AS "歷史匯出資料存放目錄"
  ,MA018 AS "歷史匯入資料存放目錄"
  ,MA019 AS "保留"

FROM FTSMA
