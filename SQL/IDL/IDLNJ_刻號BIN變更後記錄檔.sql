--IDLNJ_刻號BIN變更後記錄檔
SELECT
  ,NJ001 AS "單別"
  ,NJ002 AS "單號"
  ,NJ003 AS "變更版次"
  ,NJ004 AS "序號"
  ,NJ005 AS "等級代號BIN"
  ,NJ006 AS "批號"
  ,NJ007 AS "品號"
  ,NJ008 AS "單位"
  ,NJ009 AS "數量"
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
  ,NJ012 AS "DATECODE"
  ,NJ013 AS "異動日"
  ,NJ014 AS "備註"
  ,NJ015 AS "片號記錄"
  ,NJ016 AS "確認碼"
  ,NJ017 AS "刻號"
  ,NJ018 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,NJ020 AS "被取替代品號"
  ,NJ021 AS "被取替代製程"

FROM IDLNJ
