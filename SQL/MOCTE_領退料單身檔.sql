--MOCTE_領退料單身檔
SELECT
  ,TE001 AS "領退料單別"
  ,TE002 AS "領退料單號"
  ,TE003 AS "序號"
  ,TE004 AS "材料品號"
  ,TE005 AS "領退料數量"
  ,TE006 AS "單位"
  ,TE008 AS "庫別"
  ,TE009 AS "製程代號"
  ,TE010 AS "批號"
  ,TE011 AS "製令單別"
  ,TE012 AS "製令單號"
  ,TE013 AS "領料說明"
  ,TE014 AS "備註"
  ,TE015 AS "保留欄位"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "材料型態"
  ,TE017 AS "材料品名"
  ,TE018 AS "材料規格"
  ,TE019 AS "確認碼"
  ,TE020 AS "專案代號"
  ,TE021 AS "領退料包裝數量"
  ,TE022 AS "包裝單位"
  ,TE023 AS "保稅碼"
  ,TE024 AS "取替代件"
  ,TE025 AS "產品序號數量"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TE027 AS "被取替代品號"
  ,TE028 AS "被取替代製程"
  ,TE029 AS "儲位"
  ,TE030 AS "取替代數量"
  ,TE031 AS "取替代包裝數量"
  ,TE032 AS "取替代比率"
  ,TE039 AS "海關手冊"
  ,TE500 AS "刻號/BIN記錄"
  ,TE501 AS "刻號/BIN管理"
  ,TE502 AS "DATECODE"

FROM MOCTE
