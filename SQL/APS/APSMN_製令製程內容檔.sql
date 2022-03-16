--APSMN_製令製程內容檔
SELECT
  ,MN001 AS "製令編號"
  ,MN002 AS "途程編號"
  ,MN003 AS "加工順序"
  ,MN004 AS "製程代號"
  ,MN005 AS "製造數量"
  ,MN006 AS "開始日期"
  ,MN007 AS "完成日期"
  ,MN008 AS "資源群組編號"
  ,MN009 AS "資源代號"
  ,MN010 AS "最早可開工日期"
  ,MN011 AS "最晚需完工日期"
  ,MN012 AS "平行機台否"
  ,MN013 AS "連批否"
  ,MN014 AS "製程被壓縮時間"
  ,MN015 AS "工作站編號"
  ,MN016 AS "產能重疊比例"
  ,MN017 AS "廠別"
  ,MN018 AS "開始時間"
  ,MN019 AS "完成時間"
  ,MN020 AS "最早可開工時間"
  ,MN021 AS "最晚需完工時間"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,MN023 AS "批次加工量"
  ,MN024 AS "APS固定機時"
  ,MN025 AS "APS變動機時"
  ,MN026 AS "預計開工時間"
  ,MN027 AS "預計完工時間"
  ,MN028 AS "APS移轉批量"
  ,MN029 AS "鎖定開工時間"
  ,MN030 AS "鎖定完工時間"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,CASE 
   WHEN '0' THEN N'否'
   WHEN '1' THEN N'是'
   ELSE ""
   END AS "批次加工否"
  ,MN033 AS "基準數量"
  ,MN034 AS "指定資源"
  ,MN035 AS "變更碼"
  ,MN036 AS "計劃批號"
  ,CASE 
   WHEN '0' THEN N'非外包'
   WHEN '1' THEN N'外包製程'
   ELSE ""
   END AS "外包製程否"
  ,MN042 AS "設備規格一"
  ,MN043 AS "設備規格二"
  ,MN044 AS "設備規格三"
  ,MN045 AS "設備規格四"
  ,MN046 AS "設備規格五"
  ,MN047 AS "設備規格六"
  ,MN048 AS "設備規格七"
  ,MN049 AS "設備規格八"
  ,MN050 AS "設備規格九"
  ,MN051 AS "設備規格十"
  ,MN052 AS "設備規格十一"
  ,MN053 AS "設備規格十二"
  ,MN054 AS "設備規格十三"
  ,MN055 AS "設備規格十四"
  ,MN056 AS "設備規格十五"
  ,MN057 AS "後製工時"

FROM APSMN
