--BTSLW_轉撥條碼處理單頭資料檔
SELECT
  ,LW001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'轉撥單轉撥'
   ELSE ""
   END AS "作業種類"
  ,LW003 AS "處理狀態"
  ,LW004 AS "工作日期"
  ,LW005 AS "使用者代號"
  ,LW006 AS "轉撥單別"
  ,LW007 AS "轉撥單號"
  ,LW008 AS "廠別"
  ,LW009 AS "備註"
  ,LW012 AS "異常碼"

FROM BTSLW
