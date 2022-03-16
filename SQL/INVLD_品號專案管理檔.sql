--INVLD_品號專案管理檔
SELECT
  ,LD001 AS "專案代號"
  ,LD002 AS "品號"
  ,LD003 AS "單據日期"
  ,LD004 AS "入出別"
  ,LD005 AS "單據單別"
  ,LD006 AS "單據單號"
  ,LD007 AS "單據序號"
  ,LD008 AS "庫別"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   ELSE ""
   END AS "異動別"
  ,LD010 AS "數量"
  ,LD011 AS "單位成本"
  ,LD012 AS "金額"
  ,LD013 AS "備註"
  ,LD014 AS "包裝數量"

FROM INVLD
