--MRPMD_MRP計劃條件設定檔
SELECT
  ,MD001 AS "計劃批號"
  ,MD002 AS "計劃廠別"
  ,MD003 AS "起始庫別"
  ,MD004 AS "截止庫別"
  ,CASE 
   WHEN '1' THEN N'料號'
   WHEN '2' THEN N'NetChange'
   ELSE ""
   END AS "計劃品號來源"
  ,MD006 AS "起始供需品號"
  ,MD007 AS "截止供需品號"
  ,MD008 AS "起始供需日期"
  ,MD009 AS "截止供需日期"
  ,CASE 
   WHEN '1' THEN N'日'
   WHEN '2' THEN N'週'
   WHEN '3' THEN N'旬'
   WHEN '4' THEN N'月'
   WHEN '5' THEN N'季'
   WHEN '6' THEN N'依時距代號'
   ELSE ""
   END AS "使用時距方式"
  ,MD011 AS "時距代號"
  ,MD012 AS "起始計劃階次"
  ,MD013 AS "截止計劃階次"
  ,MD014 AS "執行替代料"
  ,MD015 AS "備註"
  ,MD016 AS "計劃人員"

FROM MRPMD
