--CMSMC_庫別資料檔
SELECT
  ,MC001 AS "庫別代號"
  ,MC002 AS "庫別名稱"
  ,MC003 AS "廠別代號"
  ,CASE 
   WHEN '1' THEN N'存貨倉'
   WHEN '2' THEN N'非存貨倉'
   ELSE ""
   END AS "庫別性質"
  ,MC005 AS "納入MRP計算"
  ,MC006 AS "確認時庫存量不足准許出庫"
  ,MC007 AS "備註"
  ,MC008 AS "存檔時庫存量不足准許出庫"
  ,MC009 AS "儲位管理"

FROM CMSMC
