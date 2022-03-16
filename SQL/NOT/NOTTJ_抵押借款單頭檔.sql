--NOTTJ_抵押借款單頭檔
SELECT
  ,TJ001 AS "借款批號"
  ,TJ002 AS "合約日期"
  ,TJ003 AS "借款銀行"
  ,TJ004 AS "到期日"
  ,TJ005 AS "幣別"
  ,TJ007 AS "年利率"
  ,TJ008 AS "抵押品"
  ,TJ009 AS "備註"
  ,CASE 
   WHEN '1' THEN N'每月平均償還'
   WHEN '2' THEN N'到期全部償還'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "還款方式"
  ,CASE 
   WHEN '1' THEN N'每月固定日計息'
   WHEN '2' THEN N'到期計息'
   WHEN '3' THEN N'每月相對日計息'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "還息方式"
  ,TJ012 AS "借款科目"
  ,TJ013 AS "月還款日"
  ,TJ014 AS "借款金額"
  ,TJ015 AS "已還款金額"
  ,TJ016 AS "融資種類"
  ,TJ017 AS "結案碼"
  ,TJ018 AS "利息科目"
  ,TJ019 AS "抵押額度"
  ,TJ020 AS "額度成數"
  ,TJ021 AS "起息日"
  ,TJ022 AS "最近付息日"
  ,TJ028 AS "融資群組"

FROM NOTTJ
