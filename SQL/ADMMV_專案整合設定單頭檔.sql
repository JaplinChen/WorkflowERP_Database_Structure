--ADMMV_專案整合設定單頭檔
SELECT
  ,MV001 AS "整合代號"
  ,MV002 AS "整合名稱"
  ,MV003 AS "備註"
  ,MV005 AS "ERPII-WebServiceURL"
  ,MV006 AS "ERP-WebServiceURL"
  ,MV007 AS "公司代號"
  ,CASE 
   WHEN 'Y' THEN N'整合平台'
   WHEN 'N' THEN N'ERPII'
   ELSE ""
   END AS "連結方式"
  ,MV009 AS "整合平台-WebServiceURL"
  ,MV010 AS "傳送加密"
  ,MV011 AS "電子表單WebSiteName"
  ,MV012 AS "電子表單IP"

FROM ADMMV
