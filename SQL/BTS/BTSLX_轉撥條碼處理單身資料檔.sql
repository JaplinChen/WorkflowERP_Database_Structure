--BTSLX_轉撥條碼處理單身資料檔
SELECT
  ,LX001 AS "工作ID"
  ,CASE 
   WHEN '1' THEN N'轉撥單轉撥'
   ELSE ""
   END AS "作業種類"
  ,LX003 AS "處理序號"
  ,LX004 AS "品號"
  ,LX005 AS "撥出倉庫"
  ,LX006 AS "撥出批號"
  ,LX007 AS "數量"
  ,LX008 AS "撥入倉庫"
  ,LX009 AS "備用"
  ,LX010 AS "處理時間"
  ,LX011 AS "來源單序號"
  ,LX012 AS "轉出儲位"
  ,LX013 AS "轉入儲位"
  ,LX019 AS "轉撥序號"

FROM BTSLX
