--COPMF_銷售預測單身資料檔
SELECT
  ,MF001 AS "預測代號"
  ,MF002 AS "序號"
  ,MF003 AS "品號"
  ,MF004 AS "品名"
  ,MF005 AS "規格"
  ,MF006 AS "日期"
  ,MF007 AS "預測庫"
  ,MF008 AS "預測數量"
  ,MF009 AS "已受訂量"
  ,MF010 AS "單位"
  ,MF011 AS "幣別"
  ,MF012 AS "單價"
  ,MF013 AS "備註"
  ,MF014 AS "預測金額"
  ,MF016 AS "[品號分類一]"
  ,MF017 AS "[品號分類二]"
  ,MF018 AS "[品號分類三]"
  ,MF019 AS "[品號分類四]"
  ,CASE 
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "結案碼"
  ,MF026 AS "優先順序"
  ,MF027 AS "鎖定交期"

FROM COPMF
