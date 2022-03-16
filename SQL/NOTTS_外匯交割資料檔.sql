--NOTTS_外匯交割資料檔
SELECT
  ,TS001 AS "銀行代號"
  ,TS002 AS "交易別"
  ,TS003 AS "交割日期"
  ,TS004 AS "序號"
  ,TS005 AS "契約書號碼"
  ,TS006 AS "幣別"
  ,TS007 AS "匯率"
  ,TS008 AS "交割原幣金額"
  ,TS009 AS "交割本幣金額"
  ,TS010 AS "備註"
  ,TS011 AS "確認日期"
  ,TS012 AS "確認者"
  ,TS013 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態"
  ,TS015 AS "產生分錄碼"
  ,TS016 AS "傳票單別"
  ,TS017 AS "傳票單號"
  ,TS018 AS "會計科目"

FROM NOTTS
