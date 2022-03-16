--IDLMG_刻號BIN記錄檔
SELECT
  ,MG001 AS "單別"
  ,MG002 AS "單號"
  ,MG003 AS "序號"
  ,MG004 AS "等級代號BIN"
  ,MG005 AS "批號"
  ,MG006 AS "品號"
  ,MG007 AS "單位"
  ,MG008 AS "數量"
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
  ,MG011 AS "DATECODE"
  ,MG012 AS "異動日"
  ,MG013 AS "備註"
  ,MG014 AS "片號記錄"
  ,MG015 AS "確認碼"
  ,MG016 AS "刻號"
  ,MG017 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,MG019 AS "被取替代品號"
  ,MG020 AS "被取替代製程"

FROM IDLMG
