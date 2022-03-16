--VTAMD_進銷項憑證單身檔
SELECT
  ,MD001 AS "申報公司"
  ,MD002 AS "申報年月"
  ,MD003 AS "流水號"
  ,MD004 AS "序號"
  ,MD005 AS "交易單據單別"
  ,MD006 AS "交易單據單號"
  ,MD007 AS "交易單據序號"
  ,MD008 AS "品名"
  ,MD009 AS "數量"
  ,MD010 AS "單價"
  ,MD011 AS "未稅金額"
  ,MD012 AS "稅率"
  ,MD013 AS "增值稅"
  ,MD014 AS "備註"
  ,CASE 
   WHEN '1' THEN N'進貨'
   WHEN '2' THEN N'託外進貨'
   WHEN '3' THEN N'出口費用'
   WHEN '4' THEN N'資產進貨'
   WHEN '5' THEN N'預付購料'
   WHEN '6' THEN N'進口費用'
   WHEN '7' THEN N'銷退'
   WHEN '8' THEN N'費用申請'
   WHEN '9' THEN N'其他'
   WHEN 'A' THEN N'銷貨'
   WHEN 'B' THEN N'資產出售'
   WHEN 'C' THEN N'退貨'
   WHEN 'D' THEN N'託外退貨'
   ELSE ""
   END AS "交易類別"

FROM VTAMD
