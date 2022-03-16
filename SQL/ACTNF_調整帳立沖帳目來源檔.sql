--ACTNF_調整帳立沖帳目來源檔
SELECT
  ,NF001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二)'
   ELSE ""
   END AS "立沖帳目順序"
  ,NF003 AS "立沖帳目代號"
  ,NF004 AS "傳票日期"
  ,NF005 AS "傳票單別"
  ,NF006 AS "傳票單號"
  ,NF007 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,NF009 AS "本幣金額"
  ,NF010 AS "摘要"
  ,NF011 AS "部門"
  ,NF012 AS "幣別"
  ,NF013 AS "匯率"
  ,NF014 AS "原幣金額"
  ,NF015 AS "立沖帳目名稱"
  ,NF018 AS "已沖本幣金額"
  ,NF019 AS "已沖原幣金額"
  ,NF020 AS "結案碼"
  ,NF021 AS "帳別代號"

FROM ACTNF
