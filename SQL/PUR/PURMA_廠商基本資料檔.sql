--PURMA_廠商基本資料檔
SELECT
  ,MA001 AS "廠商代號"
  ,MA002 AS "簡稱"
  ,MA003 AS "公司全名"
  ,MA004 AS "廠商分類"
  ,MA005 AS "統一編號"
  ,MA006 AS "國家別"
  ,MA007 AS "地區別"
  ,MA008 AS "TEL(一)"
  ,MA009 AS "TEL(二)"
  ,MA010 AS "FAXNO."
  ,MA011 AS "E-MAIL"
  ,MA012 AS "負責人"
  ,MA013 AS "聯絡人(一)"
  ,MA014 AS "聯絡地址(一)"
  ,MA015 AS "聯絡地址(二)"
  ,CASE 
   WHEN '1' THEN N'已核准'
   WHEN '2' THEN N'尚待核准'
   WHEN '3' THEN N'不准交易'
   ELSE ""
   END AS "核准狀況"
  ,MA017 AS "開業日"
  ,MA018 AS "資本額"
  ,MA019 AS "員工人數"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'FAX'
   WHEN '3' THEN N'EDI'
   WHEN '4' THEN N'E-MAIL'
   ELSE ""
   END AS "採購單發送方式"
  ,MA021 AS "交易幣別"
  ,MA022 AS "初次交易"
  ,MA023 AS "最近交易"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'電匯'
   WHEN '3' THEN N'支票'
   WHEN '4' THEN N'其他'
   ELSE ""
   END AS "付款方式"
  ,MA025 AS "付款條件"
  ,MA026 AS "價格條件"
  ,MA027 AS "匯款銀行"
  ,MA028 AS "匯款帳號"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'自領'
   WHEN '3' THEN N'其它'
   ELSE ""
   END AS "票據寄領"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'農產品收購憑證'
   WHEN 'G' THEN N'海關代徵完稅憑證'
   WHEN 'N' THEN N'不可抵扣專用發票'
   WHEN 'S' THEN N'可抵扣專用發票'
   WHEN 'T' THEN N'運輸發票'
   WHEN 'W' THEN N'廢舊物資收購憑證'
   WHEN 'Z' THEN N'其他'
   ELSE ""
   END AS "發票聯數"
  ,MA031 AS "ABC等級"
  ,MA032 AS "交貨評等"
  ,MA033 AS "品質評等"
  ,MA034 AS "結帳__月"
  ,MA035 AS "結帳__日"
  ,MA036 AS "付款__月"
  ,MA037 AS "付款__日"
  ,MA038 AS "票期__月"
  ,MA039 AS "票期__日"
  ,MA040 AS "備註"
  ,MA041 AS "應付帳款科目"
  ,MA042 AS "加工費用科目"
  ,MA043 AS "票據科目"
  ,MA044 AS "課稅別"
  ,MA045 AS "允許分批交貨"
  ,MA046 AS "郵遞區號(一)"
  ,MA047 AS "採購人員"
  ,MA048 AS "聯絡人(二)"
  ,MA049 AS "聯絡人(三)"
  ,MA050 AS "郵遞區號(二)"
  ,MA051 AS "帳單地址(一)"
  ,MA052 AS "帳單地址(二)"
  ,CASE 
   WHEN '1' THEN N'整張資料計算'
   WHEN '2' THEN N'單身單筆資料計算'
   ELSE ""
   END AS "稅額"
  ,MA055 AS "付款條件代號"
  ,MA056 AS "隨貨附發票"
  ,CASE 
   WHEN '1' THEN N'中文'
   WHEN '2' THEN N'英文'
   ELSE ""
   END AS "憑證列印格式"
  ,MA058 AS "訂金比率"
  ,MA059 AS "FAXNO(會計)"
  ,MA060 AS "匯至EBC"
  ,CASE 
   WHEN '1' THEN N'PLM'
   ELSE ""
   END AS "來源"
  ,MA063 AS "EBC申請代號"
  ,MA066 AS "交易項目"
  ,MA067 AS "總公司"
  ,MA068 AS "總公司收款"
  ,MA069 AS "版次"
  ,MA070 AS "新廠商核准日"
  ,MA076 AS "稅別碼"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,MA079 AS "Claim備註"
  ,CASE 
   WHEN '0' THEN N'有限產能'
   WHEN '1' THEN N'無限產能'
   ELSE ""
   END AS "產能型態"
  ,MA084 AS "單身多稅率"
  ,MA085 AS "關係人代號"
  ,MA086 AS "發票註記碼長度"
  ,MA087 AS "發票流水碼長度"

FROM PURMA
