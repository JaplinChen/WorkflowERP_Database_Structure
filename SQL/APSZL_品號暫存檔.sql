--APSZL_品號暫存檔
SELECT
  ,ZL001 AS "品號"
  ,ZL002 AS "理想因子"
  ,ZL003 AS "寬放因子"
  ,ZL004 AS "連批條件1"
  ,ZL005 AS "連批條件2"
  ,ZL006 AS "連批條件3"
  ,ZL007 AS "連批條件4"
  ,ZL008 AS "連批條件5"
  ,ZL009 AS "優先考慮逆向排程"
  ,CASE 
   WHEN '0' THEN N'否'
   WHEN '1' THEN N'是'
   ELSE ""
   END AS "批次加工否"
  ,ZL011 AS "APS固定機時"
  ,ZL012 AS "APS變動機時"
  ,ZL013 AS "APS移轉批量"
  ,ZL014 AS "基準數量"
  ,ZL015 AS "批次加工量"
  ,ZL016 AS "途程編號"
  ,ZL022 AS "後製工時"

FROM APSZL
