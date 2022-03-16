--ACTTF_報表結構單身檔
SELECT
  ,TF001 AS "報表編號"
  ,TF002 AS "序號"
  ,CASE 
   WHEN '0' THEN N'不印(不空行)'
   WHEN '1' THEN N'正常列印'
   WHEN '2' THEN N'金額不為0才印'
   WHEN '3' THEN N'印金額底線'
   WHEN '4' THEN N'印整行橫線'
   WHEN '5' THEN N'空行'
   WHEN '6' THEN N'跳頁'
   WHEN '7' THEN N'不印金額'
   ELSE ""
   END AS "列印碼1"
  ,CASE 
   WHEN 'Y' THEN N'展至統制或明細'
   WHEN 'N' THEN N'不展至統制或明細'
   ELSE ""
   END AS "列印碼2"
  ,CASE 
   WHEN 'L' THEN N'左'
   WHEN 'R' THEN N'右'
   ELSE ""
   END AS "列印碼3"
  ,TF006 AS "空格"
  ,TF007 AS "科目編號"
  ,TF008 AS "科目名稱"
  ,TF009 AS "科目別名"
  ,TF010 AS "來源碼"
  ,TF011 AS "合計階1"
  ,TF012 AS "合計階2"
  ,TF013 AS "合計階3"
  ,TF014 AS "合計階4"
  ,TF015 AS "合計階5"
  ,TF016 AS "合計階6"
  ,TF017 AS "合計階7"
  ,TF018 AS "合計階8"
  ,TF019 AS "合計階9"
  ,TF020 AS "百分比碼"
  ,TF021 AS "起始部門代號"
  ,TF022 AS "截止部門代號"
  ,TF026 AS "Code"
  ,TF027 AS "Notes"

FROM ACTTF
