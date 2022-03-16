--DSCMD_密碼參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'發送E-MAIL'
   ELSE ""
   END AS "通知方式"
  ,CASE 
   WHEN '1' THEN N'OUTLOOK'
   ELSE ""
   END AS "通知工具"
  ,CASE 
   WHEN '1' THEN N'月數'
   WHEN '2' THEN N'天數'
   ELSE ""
   END AS "計算單位"
  ,MD004 AS "月數"
  ,MD005 AS "天數"
  ,MD006 AS "控管密碼長度"
  ,MD007 AS "密碼長度"
  ,MD013 AS "控管密碼複雜性(需含"
  ,MD014 AS "控管密碼錯誤次數鎖定"
  ,MD015 AS "密碼錯誤次數"

FROM DSCMD
