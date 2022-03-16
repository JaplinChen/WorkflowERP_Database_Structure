--ACTTD_常用傳票單身檔
SELECT
  ,TD001 AS "傳票種類"
  ,TD002 AS "傳票代號"
  ,TD003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,TD005 AS "科目編號"
  ,TD006 AS "部門"
  ,TD007 AS "本幣金額"
  ,TD008 AS "立沖帳目(一)"
  ,TD009 AS "立沖帳目(二)"
  ,TD010 AS "摘要"
  ,TD011 AS "專案代號"
  ,TD012 AS "備註"
  ,TD013 AS "幣別"
  ,TD014 AS "匯率"
  ,TD015 AS "原幣金額"
  ,TD016 AS "立沖帳一名稱"
  ,TD017 AS "立沖帳二名稱"
  ,TD025 AS "關係人代號"
  ,TD026 AS "營運分類一"
  ,TD027 AS "營運分類一名稱"
  ,TD028 AS "營運分類二"
  ,TD029 AS "營運分類二名稱"
  ,TD030 AS "營運分類三"
  ,TD031 AS "營運分類三名稱"
  ,TD040 AS "現金流量表項目"

FROM ACTTD
