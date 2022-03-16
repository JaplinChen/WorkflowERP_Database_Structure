--BCSMI_保稅參數設定檔
SELECT
  ,MI001 AS "保稅關帳年月"
  ,MI002 AS "監管單位"
  ,MI003 AS "保稅工廠監管編號"
  ,MI004 AS "保稅現行年月"
  ,MI005 AS "保稅類型"
  ,MI006 AS "保留欄位"
  ,MI007 AS "更新關稅率碼"
  ,CASE 
   WHEN '1' THEN N'甲式'
   WHEN '2' THEN N'乙式'
   ELSE ""
   END AS "原料結算方式"

FROM BCSMI
