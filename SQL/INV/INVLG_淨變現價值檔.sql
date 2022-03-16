--INVLG_淨變現價值檔
SELECT
  ,LG001 AS "品號"
  ,LG002 AS "年月"
  ,CASE 
   WHEN '1' THEN N'最近售價'
   WHEN '2' THEN N'平均售價'
   WHEN '3' THEN N'標準售價'
   WHEN '4' THEN N'標準進價'
   WHEN '5' THEN N'最近進價'
   WHEN '6' THEN N'最近進貨單的單位成本'
   WHEN '7' THEN N'最近月檔的單位成本'
   WHEN '8' THEN N'單位成本'
   ELSE ""
   END AS "單價來源"
  ,LG004 AS "淨變現單價"
  ,LG005 AS "淨變現價值"
  ,LG006 AS "成本來源"
  ,LG007 AS "單位成本"
  ,LG008 AS "庫存成本"
  ,LG009 AS "庫存數量"
  ,LG010 AS "溢(跌)價"
  ,LG011 AS "溢(跌)價比率"
  ,LG012 AS "平均成品溢(跌)價比率"
  ,LG013 AS "參考日期(起)"
  ,LG014 AS "參考日期(迄)"
  ,LG015 AS "直接銷售費用率"
  ,LG016 AS "參考單別"
  ,LG017 AS "參考單號"
  ,LG018 AS "參考單序"
  ,LG019 AS "銷售數量"
  ,LG021 AS "銷售金額"
  ,CASE 
   WHEN '1' THEN N'成品'
   WHEN '2' THEN N'製成品'
   WHEN '3' THEN N'半成品'
   WHEN '4' THEN N'原料'
   WHEN '5' THEN N'物料'
   ELSE ""
   END AS "存貨類型"
  ,CASE 
   WHEN '1' THEN N'原料無跌價'
   WHEN '7' THEN N'無成品資料'
   WHEN '8' THEN N'逆推成品'
   WHEN '9' THEN N'成品無跌價'
   ELSE ""
   END AS "溢(跌)價說明"
  ,LG029 AS "呆滯成本"
  ,LG030 AS "呆滯數量"

FROM INVLG
