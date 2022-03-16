--BCSLD_保稅異動明細資料檔
SELECT
  ,LD001 AS "品號"
  ,LD002 AS "日期"
  ,LD003 AS "入出別"
  ,LD004 AS "異動代碼"
  ,LD005 AS "單別"
  ,LD006 AS "單號"
  ,LD007 AS "序號"
  ,LD008 AS "庫別"
  ,LD009 AS "備註"
  ,LD010 AS "單據異動保稅庫存數量"
  ,LD011 AS "保留欄位"
  ,LD012 AS "報單類別"

FROM BCSLD
