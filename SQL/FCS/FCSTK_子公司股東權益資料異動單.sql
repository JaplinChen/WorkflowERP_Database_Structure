--FCSTK_子公司股東權益資料異動單
SELECT
  ,TK001 AS "子公司代號"
  ,TK002 AS "異動日期"
  ,TK003 AS "功能歷史匯率"
  ,TK004 AS "合併歷史匯率"
  ,TK005 AS "確認碼"
  ,TK006 AS "確認日期"
  ,TK007 AS "確認者"
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
   END AS "簽核狀態碼"
  ,TK009 AS "備註"
  ,TK010 AS "首次投資"
  ,TK015 AS "母公司代號"
  ,TK016 AS "合併代號"

FROM FCSTK
