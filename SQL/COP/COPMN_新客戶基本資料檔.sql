--COPMN_新客戶基本資料檔
SELECT
  ,MN001 AS "新客戶代號"
  ,MN002 AS "新客戶簡稱"
  ,MN003 AS "新客戶全名"
  ,MN004 AS "負責人"
  ,MN005 AS "連絡人"
  ,MN006 AS "TEL_NO(一)"
  ,MN007 AS "TEL_NO(二)"
  ,MN008 AS "FAX_NO"
  ,MN009 AS "E-Mail"
  ,MN010 AS "統一編號"
  ,MN011 AS "資本額"
  ,MN012 AS "年營業額"
  ,MN013 AS "員工人數"
  ,MN014 AS "交易幣別"
  ,MN015 AS "部門別"
  ,MN016 AS "業務人員"
  ,MN017 AS "通路別"
  ,MN018 AS "地區別"
  ,MN019 AS "國家別"
  ,MN020 AS "開業日期"
  ,MN021 AS "初次交易日"
  ,MN022 AS "最近交易日"
  ,MN023 AS "登記地址(一)"
  ,MN024 AS "登記地址(二)"
  ,MN025 AS "發票地址(一)"
  ,MN026 AS "發票地址(二)"
  ,MN027 AS "送貨地址(一)"
  ,MN028 AS "銷售評等"
  ,MN029 AS "信用評等"
  ,MN030 AS "價格條件"
  ,MN031 AS "付款條件"
  ,MN032 AS "信用額度管制"
  ,MN033 AS "信用額度"
  ,MN034 AS "可超出率%"
  ,CASE 
   WHEN '1' THEN N'利潤率'
   WHEN '2' THEN N'折扣率'
   ELSE ""
   END AS "計價方式"
  ,MN036 AS "折扣率"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,MN038 AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'FAX'
   WHEN '3' THEN N'EDI'
   WHEN '4' THEN N'E-MNIL'
   ELSE ""
   END AS "單據發送方式"
  ,MN040 AS "郵遞區號"
  ,CASE 
   WHEN '1' THEN N'現金'
   WHEN '2' THEN N'電匯'
   WHEN '3' THEN N'支票'
   WHEN '4' THEN N'其他'
   ELSE ""
   END AS "收款方式"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'自領'
   WHEN '3' THEN N'其它'
   ELSE ""
   END AS "票據寄領"
  ,MN043 AS "結帳日期"
  ,MN044 AS "預計收款日"
  ,MN045 AS "資金實現日"
  ,MN046 AS "付款銀行(一)"
  ,MN047 AS "帳款科目"
  ,CASE 
   WHEN '1' THEN N'空運'
   WHEN '2' THEN N'海運'
   WHEN '3' THEN N'海空聯運'
   WHEN '4' THEN N'郵寄'
   WHEN '5' THEN N'陸運'
   WHEN '6' THEN N'自取'
   WHEN '7' THEN N'自送'
   WHEN '8' THEN N'快遞'
   ELSE ""
   END AS "運輸方式"
  ,MN049 AS "備註"
  ,MN050 AS "品牌"
  ,MN051 AS "目的地"
  ,MN052 AS "海運港口"
  ,MN053 AS "空運機場"
  ,MN054 AS "海運公司"
  ,MN055 AS "空運公司"
  ,MN056 AS "代理商"
  ,MN057 AS "報關行"
  ,MN058 AS "驗貨公司"
  ,MN059 AS "佣金比率"
  ,MN060 AS "其它比率"
  ,MN061 AS "保險費率"
  ,MN062 AS "文件地址(一)"
  ,MN063 AS "文件地址(二)"
  ,MN064 AS "送貨地址(二)"
  ,MN065 AS "總店號"
  ,MN066 AS "總公司請款"
  ,MN067 AS "分店數"
  ,MN068 AS "歇業日期"
  ,MN069 AS "付款銀行(二)"
  ,MN070 AS "付款銀行(三)"
  ,MN071 AS "銀行帳號(一)"
  ,MN072 AS "銀行帳號(二)"
  ,MN073 AS "銀行帳號(三)"
  ,MN074 AS "票據科目"
  ,MN075 AS "取價順序"
  ,MN076 AS "型態別"
  ,MN077 AS "路線別"
  ,MN078 AS "其他別"
  ,MN079 AS "郵遞區號"
  ,MN080 AS "郵遞區號"
  ,MN081 AS "郵遞區號"
  ,MN082 AS "信用額度依總公司控管"
  ,MN083 AS "付款條件代號"
  ,MN084 AS "發票號碼依總公司控管"
  ,MN085 AS "收款業務員"
  ,MN086 AS "隨貨附發票"
  ,CASE 
   WHEN '1' THEN N'整張資料計算'
   WHEN '2' THEN N'單身單筆資料計算'
   ELSE ""
   END AS "稅額"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "訂單信用查核方式"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "銷貨信用查核方式"
  ,MN090 AS "LC收狀金額比率"
  ,MN091 AS "未兌現應收票據比率"
  ,MN092 AS "應收帳款比率"
  ,MN093 AS "未結帳銷貨金額比率"
  ,MN094 AS "未出貨訂單金額比率"
  ,MN095 AS "訂金比率"
  ,CASE 
   WHEN '1' THEN N'自動結帳'
   WHEN '2' THEN N'單品結帳'
   ELSE ""
   END AS "結帳方法"
  ,MN097 AS "折扣率預設"
  ,MN098 AS "帳單郵遞區號"
  ,MN099 AS "帳單地址(一)"
  ,MN100 AS "帳單地址(二)"
  ,MN101 AS "帳單收件人"
  ,MN102 AS "未歸還暫出金額比率"
  ,MN103 AS "匯至EBC"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,MN106 AS "EBC申請代號"
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
  ,MN110 AS "新客戶英文全名"
  ,MN111 AS "確認碼"
  ,MN112 AS "確認日期"
  ,MN113 AS "確認者"
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
  ,MN115 AS "正式客戶代號"
  ,MN116 AS "申請日期"
  ,MN119 AS "單身多稅率"
  ,MN122 AS "稅別碼"
  ,MN123 AS "合約訂單是否歸屬總公司"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "出貨通知信用查核方式"
  ,MN128 AS "關係人代號"
  ,MN129 AS "發票註記碼長度"
  ,MN130 AS "發票流水碼長度"
  ,MN131 AS "收入遞延天數"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "暫出單信用查核方式"

FROM COPMN
