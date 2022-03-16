--ACPTD_付款單單身檔
SELECT
  ,TD001 AS "付款單別"
  ,TD002 AS "付款單號"
  ,TD003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借/貸"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'票據'
   WHEN '7' THEN N'折讓'
   WHEN '3' THEN N'待抵'
   WHEN '4' THEN N'沖帳'
   WHEN '5' THEN N'溢收'
   WHEN '6' THEN N'差額'
   WHEN '8' THEN N'應收票據轉付'
   WHEN '9' THEN N'應收帳款'
   WHEN 'A' THEN N'收款單沖帳'
   ELSE ""
   END AS "類別"
  ,TD006 AS "來源單別"
  ,TD007 AS "來源單號"
  ,TD008 AS "會計科目"
  ,TD009 AS "到期日"
  ,TD010 AS "幣別"
  ,TD011 AS "匯率"
  ,TD012 AS "立帳金額"
  ,TD013 AS "立帳餘額"
  ,TD014 AS "原幣金額"
  ,TD015 AS "本國幣金額"
  ,TD016 AS "參考單號"
  ,TD017 AS "備註"
  ,TD018 AS "採購單單別"
  ,TD019 AS "採購單單號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TD021 AS "更新碼"
  ,TD022 AS "部門別"
  ,TD023 AS "發票號碼"
  ,TD024 AS "銀行代號"
  ,TD025 AS "專案代號"
  ,TD026 AS "預約付款碼"
  ,TD032 AS "註記號"

FROM ACPTD
