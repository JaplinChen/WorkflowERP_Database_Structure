--NOTTH_票據融資單頭檔
SELECT
  ,TH001 AS "融資批號"
  ,TH002 AS "融資日期"
  ,TH003 AS "銀行代號"
  ,TH004 AS "幣別"
  ,TH005 AS "融資額度"
  ,TH006 AS "到期日"
  ,TH007 AS "年利率"
  ,TH008 AS "備註"
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
  ,TH011 AS "融資科目"
  ,TH012 AS "利息科目"
  ,TH013 AS "融資金額"
  ,TH014 AS "已還款金額"
  ,TH015 AS "結案碼"
  ,TH016 AS "融資種類"
  ,TH017 AS "融資成數"
  ,TH018 AS "融資票據"
  ,TH019 AS "已兌現金額"
  ,TH020 AS "退票金額"
  ,TH021 AS "月還款日"
  ,TH022 AS "起息日"
  ,TH023 AS "最近付息日"
  ,TH029 AS "融資群組"

FROM NOTTH
