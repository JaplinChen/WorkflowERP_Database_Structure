--MOCTB_製造命令單身檔
SELECT
  ,TB001 AS "製令單別"
  ,TB002 AS "製令單號"
  ,TB003 AS "材料品號"
  ,TB004 AS "需領用量"
  ,TB005 AS "已領用量"
  ,TB006 AS "製程代號"
  ,TB007 AS "單位"
  ,TB009 AS "庫別"
  ,TB010 AS "取替代件"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TB012 AS "材料品名"
  ,TB013 AS "材料規格"
  ,TB014 AS "上階主件品號"
  ,TB015 AS "預計領料"
  ,TB016 AS "實際領料"
  ,TB017 AS "備註"
  ,TB018 AS "確認碼"
  ,TB019 AS "需領用包裝量"
  ,TB020 AS "已領用包裝量"
  ,TB021 AS "包裝單位"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TB023 AS "被取替代品號"
  ,TB025 AS "被取替代製程"
  ,CASE 
   WHEN '1' THEN N'製令'
   WHEN '2' THEN N'領退料'
   ELSE ""
   END AS "來源碼"
  ,TB035 AS "發料DATECODE"
  ,TB036 AS "發料儲位"
  ,TB037 AS "加工順序"
  ,TB500 AS "DATECODE"
  ,TB501 AS "GROSS_DIE"
  ,TB502 AS "批號"
  ,TB503 AS "領料單別"
  ,TB504 AS "領料單號"
  ,TB505 AS "領料序號"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TB551 AS "入庫批號"
  ,TB552 AS "專案代號"
  ,TB553 AS "刻號/BIN記錄"
  ,TB554 AS "刻號管理"

FROM MOCTB
