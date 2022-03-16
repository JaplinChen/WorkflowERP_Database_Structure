--ASTTK_資產詢價單單頭檔
SELECT
  ,TK001 AS "請購單別"
  ,TK002 AS "請購單號"
  ,TK003 AS "供應廠商"
  ,TK004 AS "備註"
  ,TK200 AS "確認者"
  ,TK201 AS "確認日期"
  ,TK202 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"

FROM ASTTK
