--APSZN_途程製程暫存檔
SELECT
  ,ZN001 AS "廠別代號"
  ,ZN002 AS "品號"
  ,ZN003 AS "途程編號"
  ,ZN004 AS "加工順序"
  ,ZN005 AS "製程代號"
  ,ZN006 AS "資源編號"
  ,ZN007 AS "資源群組編號"
  ,ZN008 AS "批次否"
  ,ZN009 AS "APS固定機時"
  ,ZN010 AS "APS變動機時"
  ,ZN011 AS "APS移轉批量"
  ,ZN012 AS "基準數量"
  ,CASE 
   WHEN '0' THEN N'非外包'
   WHEN '1' THEN N'外包製程'
   ELSE ""
   END AS "外包製程否"
  ,ZN014 AS "替代順序"
  ,ZN015 AS "批次加工量"
  ,ZN016 AS "製程名稱"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   WHEN '2' THEN N'加工廠商'
   ELSE ""
   END AS "資源類型"
  ,ZN023 AS "設備規格一"
  ,ZN024 AS "設備規格二"
  ,ZN025 AS "設備規格三"
  ,ZN026 AS "設備規格四"
  ,ZN027 AS "設備規格五"
  ,ZN028 AS "設備規格六"
  ,ZN029 AS "設備規格七"
  ,ZN030 AS "設備規格八"
  ,ZN031 AS "設備規格九"
  ,ZN032 AS "設備規格十"
  ,ZN033 AS "設備規格十一"
  ,ZN034 AS "設備規格十二"
  ,ZN035 AS "設備規格十三"
  ,ZN036 AS "設備規格十四"
  ,ZN037 AS "設備規格十五"
  ,ZN038 AS "後製工時"

FROM APSZN
