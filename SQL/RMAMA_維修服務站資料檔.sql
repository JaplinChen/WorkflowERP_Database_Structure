--RMAMA_維修服務站資料檔
SELECT
  ,MA001 AS "站別代號"
  ,MA002 AS "站別簡稱"
  ,MA003 AS "站別全名"
  ,MA004 AS "維修人員數"
  ,MA005 AS "站別地址(一)"
  ,MA006 AS "站別地址(二)"
  ,MA007 AS "郵遞區號"
  ,MA008 AS "TEL_NO(一)"
  ,MA009 AS "TEL_NO(二)"
  ,MA010 AS "FAX_NO"
  ,MA011 AS "E-Mail"
  ,MA012 AS "站別等級"
  ,MA013 AS "下站代號"
  ,MA014 AS "備註"
  ,MA015 AS "下站站別簡稱"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'轉維修站'
   WHEN '2' THEN N'送原廠'
   ELSE ""
   END AS "進階處理"

FROM RMAMA
