--ACTMN_立沖帳目來源檔
SELECT
  ,MN001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二)'
   ELSE ""
   END AS "立沖帳目順序"
  ,MN003 AS "立沖帳目代號"
  ,MN004 AS "傳票日期"
  ,MN005 AS "傳票單別"
  ,MN006 AS "傳票單號"
  ,MN007 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,MN009 AS "本幣金額"
  ,MN010 AS "摘要"
  ,MN011 AS "部門"
  ,MN012 AS "幣別"
  ,MN013 AS "匯率"
  ,MN014 AS "原幣金額"
  ,MN015 AS "立沖帳目名稱"
  ,MN018 AS "已沖本幣金額"
  ,MN019 AS "已沖原幣金額"
  ,MN020 AS "結案碼"

FROM ACTMN
