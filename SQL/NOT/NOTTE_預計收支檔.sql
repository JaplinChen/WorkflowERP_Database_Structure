--NOTTE_預計收支檔
SELECT
  ,TE001 AS "預計收支代號"
  ,TE002 AS "預計日"
  ,CASE 
   WHEN '1' THEN N'收'
   WHEN '-1' THEN N'支'
   ELSE ""
   END AS "收支別"
  ,TE004 AS "銀行代號"
  ,TE005 AS "幣別"
  ,TE006 AS "匯率"
  ,TE007 AS "金額"
  ,TE008 AS "備註"
  ,TE009 AS "實現否"
  ,TE010 AS "預約付款碼"
  ,CASE 
   WHEN '1' THEN N'公司'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'客戶'
   WHEN '9' THEN N'其它'
   ELSE ""
   END AS "預約對象"
  ,TE012 AS "廠商代號"
  ,TE013 AS "廠商簡稱"
  ,TE014 AS "銀行行號"
  ,TE015 AS "銀行帳號"
  ,TE016 AS "付款單別"
  ,TE017 AS "付款單號"
  ,TE018 AS "付款序號"
  ,TE019 AS "媒體轉出碼"
  ,TE020 AS "存提單別"
  ,TE021 AS "存提單號"
  ,TE022 AS "存提序號"
  ,TE023 AS "手續費"
  ,TE025 AS "手續費負擔"

FROM NOTTE
