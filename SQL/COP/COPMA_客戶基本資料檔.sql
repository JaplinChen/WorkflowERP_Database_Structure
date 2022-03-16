--COPMA_客戶基本資料檔
SELECT
  ,MA001 AS "客戶代號"
  ,MA002 AS "客戶簡稱"
  ,MA003 AS "客戶全名"
  ,MA004 AS "負責人"
  ,MA005 AS "連絡人"
  ,MA006 AS "TEL_NO(一)"
  ,MA007 AS "TEL_NO(二)"
  ,MA008 AS "FAX_NO"
  ,MA009 AS "E-Mail"
  ,MA010 AS "統一編號"
  ,MA011 AS "資本額"
  ,MA012 AS "年營業額"
  ,MA013 AS "員工人數"
  ,MA014 AS "交易幣別"
  ,MA015 AS "部門別"
  ,MA016 AS "業務人員"
  ,MA017 AS "通路別"
  ,MA018 AS "地區別"
  ,MA019 AS "國家別"
  ,MA020 AS "開業日期"
  ,MA021 AS "初次交易日"
  ,MA022 AS "最近交易日"
  ,MA023 AS "登記地址(一)"
  ,MA024 AS "登記地址(二)"
  ,MA025 AS "發票地址(一)"
  ,MA026 AS "發票地址(二)"
  ,MA027 AS "送貨地址(一)"
  ,MA028 AS "銷售評等"
  ,MA029 AS "信用評等"
  ,MA030 AS "價格條件"
  ,MA031 AS "付款條件"
  ,MA032 AS "信用額度管制"
  ,MA033 AS "信用額度"
  ,MA034 AS "可超出率%"
  ,CASE 
   WHEN '1' THEN N'利潤率'
   WHEN '2' THEN N'折扣率'
   ELSE ""
   END AS "計價方式"
  ,MA036 AS "折扣率"
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
  ,MA038 AS "課稅別"
  ,CASE 
   WHEN '1' THEN N'郵寄'
   WHEN '2' THEN N'FAX'
   WHEN '3' THEN N'EDI'
   WHEN '4' THEN N'E-MAIL'
   ELSE ""
   END AS "單據發送方式"
  ,MA040 AS "郵遞區號"
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
  ,MA043 AS "結帳日期"
  ,MA044 AS "預計收款日"
  ,MA045 AS "資金實現日"
  ,MA046 AS "付款銀行(一)"
  ,MA047 AS "帳款科目"
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
  ,MA049 AS "備註"
  ,MA050 AS "品牌"
  ,MA051 AS "目的地"
  ,MA052 AS "海運港口"
  ,MA053 AS "空運機場"
  ,MA054 AS "海運公司"
  ,MA055 AS "空運公司"
  ,MA056 AS "代理商"
  ,MA057 AS "報關行"
  ,MA058 AS "驗貨公司"
  ,MA059 AS "佣金比率"
  ,MA060 AS "其它比率"
  ,MA061 AS "保險費率"
  ,MA062 AS "文件地址(一)"
  ,MA063 AS "文件地址(二)"
  ,MA064 AS "送貨地址(二)"
  ,MA065 AS "總店號"
  ,MA066 AS "總公司請款"
  ,MA067 AS "分店數"
  ,MA068 AS "歇業日期"
  ,MA069 AS "付款銀行(二)"
  ,MA070 AS "付款銀行(三)"
  ,MA071 AS "銀行帳號(一)"
  ,MA072 AS "銀行帳號(二)"
  ,MA073 AS "銀行帳號(三)"
  ,MA074 AS "票據科目"
  ,MA075 AS "取價順序"
  ,MA076 AS "型態別"
  ,MA077 AS "路線別"
  ,MA078 AS "其他別"
  ,MA079 AS "郵遞區號"
  ,MA080 AS "郵遞區號"
  ,MA081 AS "郵遞區號"
  ,MA082 AS "信用額度依總公司控管"
  ,MA083 AS "付款條件代號"
  ,MA084 AS "發票號碼依總公司控管"
  ,MA085 AS "收款業務員"
  ,MA086 AS "隨貨附發票"
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
  ,MA090 AS "LC收狀金額比率"
  ,MA091 AS "未兌現應收票據比率"
  ,MA092 AS "應收帳款比率"
  ,MA093 AS "未結帳銷貨金額比率"
  ,MA094 AS "未出貨訂單金額比率"
  ,MA095 AS "訂金比率"
  ,CASE 
   WHEN '1' THEN N'自動結帳'
   WHEN '2' THEN N'單品結帳'
   ELSE ""
   END AS "結帳方法"
  ,MA097 AS "折扣率預設"
  ,MA098 AS "帳單郵遞區號"
  ,MA099 AS "帳單地址(一)"
  ,MA100 AS "帳單地址(二)"
  ,MA101 AS "帳單收件人"
  ,MA102 AS "未歸還暫出金額比率"
  ,MA103 AS "匯至EBC"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,MA106 AS "EBC申請代號"
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
  ,MA110 AS "客戶英文全名"
  ,MA111 AS "新客戶核准日"
  ,MA112 AS "版次"
  ,MA118 AS "稅別碼"
  ,MA119 AS "合約訂單是否歸屬總公司"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "出貨通知信用查核方式"
  ,MA121 AS "進口商證號"
  ,MA122 AS "收貨人證號"
  ,MA123 AS "單身多稅率"
  ,MA124 AS "關係人代號"
  ,MA125 AS "發票註記碼長度"
  ,MA126 AS "發票流水碼長度"
  ,MA127 AS "收入遞延天數"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "暫出單信用查核方式"

FROM COPMA
