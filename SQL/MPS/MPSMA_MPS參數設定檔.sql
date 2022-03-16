--MPSMA_MPS參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'淨需求'
   WHEN '2' THEN N'毛需求'
   ELSE ""
   END AS "需求計算方式"
  ,MA003 AS "計算庫存可用量"
  ,CASE 
   WHEN '1' THEN N'預交日'
   WHEN '2' THEN N'生產天數'
   WHEN '3' THEN N'最晚開工日'
   ELSE ""
   END AS "排程優先順序"
  ,MA005 AS "急料條件-生產"
  ,CASE 
   WHEN '1' THEN N'有限產能'
   WHEN '2' THEN N'無限產能'
   ELSE ""
   END AS "產能推算方式"
  ,CASE 
   WHEN '1' THEN N'最後一天'
   WHEN '2' THEN N'批量分攤'
   ELSE ""
   END AS "無限產能產能落點方式"

FROM MPSMA
