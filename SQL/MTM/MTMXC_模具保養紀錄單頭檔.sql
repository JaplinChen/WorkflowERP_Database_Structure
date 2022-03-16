--MTMXC_模具保養紀錄單頭檔
SELECT
  ,XC001 AS "單別"
  ,XC002 AS "單號"
  ,XC003 AS "工具類別"
  ,XC004 AS "保修日期"
  ,XC005 AS "單據日期"
  ,XC006 AS "類別"
  ,XC007 AS "模具編號"
  ,XC008 AS "保管部門"
  ,XC009 AS "保管人員"
  ,XC010 AS "備註"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,XC012 AS "確認日期"
  ,XC013 AS "確認者"

FROM MTMXC
