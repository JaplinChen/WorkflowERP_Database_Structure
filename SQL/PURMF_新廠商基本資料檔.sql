--PURMF_新廠商基本資料檔
SELECT
  ,MF001 AS "新廠商代號"
  ,MF002 AS "簡稱"
  ,MF003 AS "公司全名"
  ,MF004 AS "廠商分類"
  ,MF005 AS "統一編號"
  ,MF006 AS "國家別"
  ,MF007 AS "地區別"
  ,MF008 AS "TEL(一)"
  ,MF009 AS "TEL(二)"
  ,MF010 AS "FAXNO."
  ,MF011 AS "E-MAIL"
  ,MF012 AS "負責人"
  ,MF013 AS "聯絡人(一)"
  ,MF014 AS "聯絡地址(一)"
  ,MF015 AS "聯絡地址(二)"
  ,CASE 
   WHEN '1' THEN N'已核准'
   WHEN '2' THEN N'尚待核准'
   WHEN '3' THEN N'不准交易'
   ELSE ""
   END AS "核准狀況"
  ,MF017 AS "開業日"
  ,MF018 AS "資本額"
  ,MF019 AS "員工人數"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'FAX'
   WHEN '3' THEN N'EDI'
   WHEN '4' THEN N'E-MAIL'
   ELSE ""
   END AS "採購單發送方式"
  ,MF021 AS "交易幣別"
  ,MF022 AS "初次交易"
  ,MF023 AS "最近交易"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'電匯'
   WHEN '3' THEN N'支票'
   WHEN '4' THEN N'其他'
   ELSE ""
   END AS "付款方式"
  ,MF025 AS "付款條件"
  ,MF026 AS "價格條件"
  ,MF027 AS "匯款銀行"
  ,MF028 AS "匯款帳號"
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
  ,MF031 AS "ABC等級"
  ,MF032 AS "交貨評等"
  ,MF033 AS "品質評等"
  ,MF034 AS "結帳__月"
  ,MF035 AS "結帳__日"
  ,MF036 AS "付款__月"
  ,MF037 AS "付款__日"
  ,MF038 AS "票期__月"
  ,MF039 AS "票期__日"
  ,MF040 AS "備註"
  ,MF041 AS "應付帳款科目"
  ,MF042 AS "加工費用科目"
  ,MF043 AS "票據科目"
  ,MF044 AS "課稅別"
  ,MF045 AS "允許分批交貨"
  ,MF046 AS "郵遞區號(一)"
  ,MF047 AS "採購人員"
  ,MF048 AS "聯絡人(二)"
  ,MF049 AS "聯絡人(三)"
  ,MF050 AS "郵遞區號(二)"
  ,MF051 AS "帳單地址(一)"
  ,MF052 AS "帳單地址(二)"
  ,CASE 
   WHEN '1' THEN N'整張資料計算'
   WHEN '2' THEN N'單身單筆資料計算'
   ELSE ""
   END AS "稅額"
  ,MF055 AS "付款條件代號"
  ,MF056 AS "隨貨附發票"
  ,CASE 
   WHEN '1' THEN N'中文'
   WHEN '2' THEN N'英文'
   ELSE ""
   END AS "憑證列印格式"
  ,MF058 AS "訂金比率"
  ,MF059 AS "FAXNO(會計)"
  ,MF060 AS "匯至EBC"
  ,MF061 AS "更新銀行帳號檔"
  ,MF063 AS "EBC申請代號"
  ,MF066 AS "交易項目"
  ,MF067 AS "總店號"
  ,MF068 AS "總公司收款"
  ,MF069 AS "確認碼"
  ,MF070 AS "確認日期"
  ,MF071 AS "確認者"
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
   END AS "簽核狀態碼"
  ,MF073 AS "正式廠商代號"
  ,MF074 AS "申請日期"
  ,MF080 AS "稅別碼"
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
  ,MF089 AS "關係人代號"
  ,MF090 AS "發票註記碼長度"
  ,MF091 AS "發票流水碼長度"

FROM PURMF
