--MTMTK_模具歸還單頭檔
SELECT
  ,TK001 AS "歸還單別"
  ,TK002 AS "歸還單號"
  ,TK003 AS "單據日期"
  ,TK004 AS "領用部門"
  ,TK005 AS "領用人員"
  ,TK006 AS "生產線別"
  ,TK007 AS "加工廠商"
  ,TK008 AS "備註"
  ,TK009 AS "歸還日期"
  ,TK010 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
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
  ,TK013 AS "傳送次數"
  ,TK014 AS "列印次數"

FROM MTMTK
