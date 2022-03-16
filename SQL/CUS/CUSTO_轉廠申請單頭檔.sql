--CUSTO_轉廠申請單頭檔
SELECT
  ,TO001 AS "轉廠申請單別"
  ,TO002 AS "轉廠申請單號"
  ,TO003 AS "轉廠申請編號"
  ,CASE 
   WHEN '1' THEN N'轉廠進口'
   WHEN '2' THEN N'轉廠出口'
   WHEN '3' THEN N'全部'
   ELSE ""
   END AS "轉廠類型"
  ,TO005 AS "申請日期"
  ,TO006 AS "單據日期"
  ,TO007 AS "申請人員"
  ,TO008 AS "購銷合同編號"
  ,TO009 AS "幣種"
  ,TO010 AS "轉出方編號"
  ,TO011 AS "手冊編號"
  ,TO012 AS "手冊有效日期"
  ,TO013 AS "轉入方編號"
  ,TO014 AS "手冊編號"
  ,TO015 AS "手冊有效日期"
  ,TO016 AS "備註"
  ,TO017 AS "列印次數"
  ,TO018 AS "確認者"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不運行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TO020 AS "主登記手冊號"
  ,TO021 AS "主登記手冊號"
  ,TO022 AS "傳送次數"

FROM CUSTO
