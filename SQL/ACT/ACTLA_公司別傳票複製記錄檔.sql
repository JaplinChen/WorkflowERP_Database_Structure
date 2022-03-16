--ACTLA_公司別傳票複製記錄檔
SELECT
  ,LA001 AS "來源公司別"
  ,LA002 AS "來源傳票單別"
  ,LA003 AS "來源傳票單號"
  ,LA004 AS "來源傳票日期"
  ,LA005 AS "來源傳票金額"
  ,LA006 AS "目的傳票單別"
  ,LA007 AS "目的傳票單號"
  ,LA013 AS "來源帳別"
  ,LA014 AS "目的帳別"

FROM ACTLA
