--APSZT_現場報工暫存檔
SELECT
  ,ZT001 AS "廠別"
  ,ZT002 AS "製令編號"
  ,ZT003 AS "加工順序"
  ,ZT004 AS "製程代號"
  ,ZT005 AS "資源代號"
  ,ZT006 AS "資源群組代號"
  ,ZT007 AS "未完成量"
  ,ZT008 AS "預計開工時間"
  ,ZT009 AS "預計完工時間"
  ,ZT010 AS "實際開工時間"
  ,ZT011 AS "批次否"
  ,ZT012 AS "APS固定機時"
  ,ZT013 AS "APS變動機時"
  ,ZT014 AS "APS移轉批量"
  ,ZT015 AS "基準數量"
  ,CASE 
   WHEN '0' THEN N'非外包'
   WHEN '1' THEN N'外包製程'
   ELSE ""
   END AS "外包製程否"
  ,ZT017 AS "批次加工量"
  ,ZT018 AS "加工廠商"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,ZT025 AS "後製工時"

FROM APSZT
