--ACTMA_會計科目資料檔
SELECT
  ,MA001 AS "科目編號"
  ,MA002 AS "科目層級"
  ,MA003 AS "科目名稱"
  ,MA004 AS "科目別名"
  ,CASE 
   WHEN '1' THEN N'帳戶'
   WHEN '2' THEN N'結轉'
   ELSE ""
   END AS "科目性質"
  ,CASE 
   WHEN '1' THEN N'資產負債'
   WHEN '2' THEN N'損益'
   ELSE ""
   END AS "資產損益別"
  ,CASE 
   WHEN '1' THEN N'借方'
   WHEN '-1' THEN N'貸方'
   ELSE ""
   END AS "報表借貸別"
  ,CASE 
   WHEN '1' THEN N'統制帳戶'
   WHEN '2' THEN N'明細帳戶'
   WHEN '3' THEN N'獨立帳戶'
   WHEN '4' THEN N'分類'
   ELSE ""
   END AS "科目類別"
  ,MA009 AS "部門管理"
  ,MA010 AS "貨幣性科目"
  ,MA011 AS "財務比率分析類別"
  ,CASE 
   WHEN '1' THEN N'客戶'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'部門'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "立沖帳目(一)來源"
  ,CASE 
   WHEN '1' THEN N'不輸入'
   WHEN '2' THEN N'可空白,須檢查'
   WHEN '3' THEN N'須輸入,不檢查'
   WHEN '4' THEN N'須輸入,須檢查'
   WHEN '5' THEN N'可空白,不檢查'
   ELSE ""
   END AS "立沖帳目(一)管制方式"
  ,CASE 
   WHEN '1' THEN N'客戶'
   WHEN '2' THEN N'廠商'
   WHEN '3' THEN N'人員'
   WHEN '4' THEN N'部門'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "立沖帳目(二)來源"
  ,CASE 
   WHEN '1' THEN N'不輸入'
   WHEN '2' THEN N'可空白,須檢查'
   WHEN '3' THEN N'須輸入,不檢查'
   WHEN '4' THEN N'須輸入,須檢查'
   WHEN '5' THEN N'可空白,不檢查'
   ELSE ""
   END AS "立沖帳目(二)管制方式"
  ,MA016 AS "科目有效"
  ,MA017 AS "備註"
  ,MA018 AS "慣用幣別"
  ,CASE 
   WHEN '1' THEN N'借餘'
   WHEN '-1' THEN N'貸餘'
   ELSE ""
   END AS "餘額借貸別"
  ,CASE 
   WHEN 'Y' THEN N'須檢查餘額借貸別'
   WHEN 'N' THEN N'不須檢查餘額借貸別'
   WHEN 'X' THEN N'不作對沖'
   ELSE ""
   END AS "立沖帳方式"
  ,MA022 AS "現金類科目"
  ,MA023 AS "現金流量表項目"
  ,CASE 
   WHEN '1' THEN N'不結轉'
   WHEN '2' THEN N'製造費用一'
   WHEN '3' THEN N'人工費用'
   WHEN '4' THEN N'製造費用二'
   WHEN '5' THEN N'製造費用三'
   WHEN '6' THEN N'製造費用四'
   WHEN '7' THEN N'製造費用五'
   ELSE ""
   END AS "製費/人工結轉"
  ,MA027 AS "預算管理"
  ,MA033 AS "生效日期"
  ,MA034 AS "關係人管理"
  ,MA035 AS "股東權益變動表項目"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "再衡量匯率來源"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "換算匯率來源"
  ,MA038 AS "營運分類一管理"
  ,MA039 AS "營運分類二管理"
  ,MA040 AS "營運分類三管理"
  ,CASE 
   WHEN '1' THEN N'借餘'
   WHEN '-1' THEN N'貸餘'
   ELSE ""
   END AS "預留欄位"
  ,CASE 
   WHEN '1' THEN N'借餘'
   WHEN '-1' THEN N'貸餘'
   ELSE ""
   END AS "預留欄位"

FROM ACTMA
