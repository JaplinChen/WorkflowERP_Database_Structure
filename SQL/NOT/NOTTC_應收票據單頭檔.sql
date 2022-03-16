--NOTTC_應收票據單頭檔
SELECT
  ,TC001 AS "票號"
  ,TC002 AS "幣別"
  ,TC003 AS "票面金額"
  ,TC004 AS "收票日"
  ,TC005 AS "到期日"
  ,TC006 AS "入帳日數"
  ,TC007 AS "預兌日"
  ,TC008 AS "付款銀行"
  ,TC009 AS "帳號"
  ,TC010 AS "票據種類"
  ,TC011 AS "客票"
  ,CASE 
   WHEN '1' THEN N'收票,'
   WHEN '2' THEN N'託收,'
   WHEN '3' THEN N'融資,'
   WHEN '4' THEN N'轉付,'
   WHEN '5' THEN N'退票,'
   WHEN '6' THEN N'兌現,'
   WHEN '7' THEN N'還票,'
   WHEN '8' THEN N'呆帳,'
   WHEN '9' THEN N'撤票,'
   WHEN 'A' THEN N'再收,'
   WHEN 'B' THEN N'貼現,'
   WHEN 'C' THEN N'L/C抵押,'
   WHEN 'D' THEN N'L/C抵押還原'
   ELSE ""
   END AS "目前票況"
  ,TC013 AS "客戶代號"
  ,TC014 AS "客戶簡稱"
  ,TC015 AS "部門代號"
  ,TC016 AS "業務員代號"
  ,TC017 AS "收款單別"
  ,TC018 AS "收款單號"
  ,TC019 AS "收款序號"
  ,TC020 AS "票據科目"
  ,TC021 AS "託收碼"
  ,TC022 AS "對方科目"
  ,TC024 AS "備註"
  ,TC025 AS "託收銀行"
  ,TC026 AS "轉付廠商"
  ,TC027 AS "匯率"
  ,TC028 AS "轉結帳"
  ,TC029 AS "結帳單別"
  ,TC030 AS "結帳單號"
  ,TC031 AS "手續費幣別"
  ,TC032 AS "手續費"

FROM NOTTC
