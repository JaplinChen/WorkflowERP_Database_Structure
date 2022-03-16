--IDLUA_MRP生產計劃發放刻號BIN
SELECT
  ,UA001 AS "計劃批號"
  ,UA002 AS "主件品號"
  ,UA003 AS "主件時距日期"
  ,UA004 AS "品號"
  ,UA005 AS "等級代號BIN"
  ,UA006 AS "批號"
  ,UA007 AS "單位"
  ,UA008 AS "數量"
  ,CASE 
   WHEN '+1' THEN N'入庫'
   WHEN '-1' THEN N'出庫'
   WHEN '0' THEN N'無'
   ELSE ""
   END AS "出入性質"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   WHEN 'X' THEN N'多產品工單'
   WHEN '9' THEN N'單產品工單'
   ELSE ""
   END AS "異動別"
  ,UA011 AS "DATECODE"
  ,UA012 AS "異動日"
  ,UA013 AS "備註"
  ,UA014 AS "片號記錄"
  ,UA015 AS "確認碼"
  ,UA016 AS "刻號"
  ,UA017 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,UA019 AS "被取替代品號"
  ,UA020 AS "被取替代製程"
  ,UA027 AS "序號"

FROM IDLUA
