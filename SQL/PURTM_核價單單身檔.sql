--PURTM_核價單單身檔
SELECT
  ,TM001 AS "單別"
  ,TM002 AS "單號"
  ,TM003 AS "序號"
  ,TM004 AS "品號"
  ,TM005 AS "品名"
  ,TM006 AS "規格"
  ,TM007 AS "廠商品號"
  ,TM008 AS "分量計價"
  ,TM009 AS "計價單位"
  ,TM010 AS "單價"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TM012 AS "備註"
  ,TM013 AS "保留欄位"
  ,TM014 AS "生效日"
  ,TM015 AS "失效日"
  ,TM016 AS "小單位"
  ,TM017 AS "原生效日"
  ,TM018 AS "原單價"
  ,TM019 AS "調整幅度"

FROM PURTM
