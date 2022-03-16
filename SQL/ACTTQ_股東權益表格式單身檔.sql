--ACTTQ_股東權益表格式單身檔
SELECT
  ,TQ001 AS "報表編號"
  ,TQ002 AS "序號"
  ,CASE 
   WHEN '1' THEN N'正常列印'
   WHEN '2' THEN N'金額不為0才印'
   WHEN '3' THEN N'印金額底線'
   WHEN '4' THEN N'印整行橫線'
   WHEN '5' THEN N'空行'
   ELSE ""
   END AS "列印"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'期初餘額'
   WHEN '2' THEN N'項目代號'
   WHEN '3' THEN N'期末餘額'
   ELSE ""
   END AS "資料來源"
  ,TQ005 AS "項目代號"
  ,TQ006 AS "項目名稱"
  ,TQ007 AS "空格"
  ,TQ008 AS "來源碼"
  ,TQ009 AS "合計階1"
  ,TQ010 AS "合計階2"
  ,TQ011 AS "合計階3"
  ,TQ012 AS "合計階4"
  ,TQ013 AS "合計階5"
  ,TQ014 AS "合計階6"
  ,TQ015 AS "合計階7"
  ,TQ016 AS "合計階8"
  ,TQ017 AS "合計階9"
  ,TQ018 AS "備註"

FROM ACTTQ
