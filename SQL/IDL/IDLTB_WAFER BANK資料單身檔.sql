--IDLTB_WAFER BANK資料單身檔
SELECT
  ,TB001 AS "WAFER_BANK_PO單別"
  ,TB002 AS "WAFER_BANK_PO單號"
  ,TB003 AS "WAFER_BANK_PO序號"
  ,TB004 AS "品號"
  ,TB005 AS "品名"
  ,TB006 AS "規格"
  ,TB007 AS "數量"
  ,TB008 AS "日期"
  ,TB009 AS "單位"
  ,TB010 AS "幣別"
  ,TB011 AS "單價"
  ,TB012 AS "金額"
  ,TB013 AS "已投片量"
  ,TB014 AS "剩餘片量"
  ,TB015 AS "結案碼"
  ,TB016 AS "備註"
  ,TB017 AS "確認碼"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"

FROM IDLTB
