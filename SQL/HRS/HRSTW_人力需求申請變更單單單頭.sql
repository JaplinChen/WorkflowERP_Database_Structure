--HRSTW_人力需求申請變更單單單頭
SELECT
  ,TW001 AS "單別"
  ,TW002 AS "單號"
  ,TW003 AS "變更版次"
  ,TW004 AS "變更日期"
  ,TW005 AS "整張結案"
  ,TW006 AS "變更原因"
  ,TW007 AS "新部門代號"
  ,TW008 AS "新申請人"
  ,TW009 AS "新備註"
  ,TW010 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TW012 AS "確認日期"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態"
  ,TW014 AS "主考人(一)"
  ,TW015 AS "主考人(二)"
  ,TW016 AS "主考人(三)"
  ,TW017 AS "人力需求申請理由(一)"
  ,TW018 AS "人力需求申請理由(二)"
  ,TW019 AS "人力需求申請理由(三)"
  ,TW107 AS "原部門代號"
  ,TW108 AS "原申請人"
  ,TW109 AS "原備註"
  ,TW110 AS "保留欄位"
  ,TW111 AS "保留欄位"
  ,TW114 AS "主考人(一)"
  ,TW115 AS "主考人(二)"
  ,TW116 AS "主考人(三)"
  ,TW117 AS "人力需求申請理由(一)"
  ,TW118 AS "人力需求申請理由(二)"
  ,TW119 AS "人力需求申請理由(三)"

FROM HRSTW
