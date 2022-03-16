--PXMTJ_回籠單單身資料檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "序號"
  ,TJ004 AS "品號"
  ,TJ005 AS "品名"
  ,TJ006 AS "規格"
  ,TJ007 AS "庫別"
  ,TJ008 AS "回籠數量"
  ,TJ009 AS "單位"
  ,TJ010 AS "單價"
  ,TJ011 AS "金額"
  ,TJ012 AS "客戶品號"
  ,CASE 
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "回籠結案碼"
  ,TJ014 AS "備註"
  ,TJ015 AS "確認碼"
  ,TJ016 AS "小單位"
  ,TJ017 AS "贈品量"
  ,TJ018 AS "包裝方式"
  ,TJ019 AS "毛重(Kg)"
  ,TJ020 AS "材積(CUFT)"
  ,TJ021 AS "佣金比率"
  ,TJ022 AS "佣金金額"
  ,TJ023 AS "品號固定佣金"

FROM PXMTJ
