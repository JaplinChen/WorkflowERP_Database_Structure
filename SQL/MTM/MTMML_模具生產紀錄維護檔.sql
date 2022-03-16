--MTMML_模具生產紀錄維護檔
SELECT
  ,ML001 AS "模具編號"
  ,ML002 AS "生產日期"
  ,ML003 AS "來源單別"
  ,ML004 AS "來源單號"
  ,ML005 AS "來源序號"
  ,ML006 AS "產品品號"
  ,CASE 
   WHEN '1' THEN N'生產入庫'
   WHEN '2' THEN N'託外進貨'
   WHEN '3' THEN N'移轉入庫'
   WHEN '4' THEN N'採購進貨'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "資料來源"
  ,ML008 AS "使用次數"
  ,ML009 AS "使用穴數"
  ,ML010 AS "生產數量"
  ,ML011 AS "備註"
  ,CASE 
   WHEN '1' THEN N'自動產生'
   WHEN '2' THEN N'人工輸入'
   ELSE ""
   END AS "來源碼"

FROM MTMML
