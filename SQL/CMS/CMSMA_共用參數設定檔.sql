--CMSMA_共用參數設定檔
SELECT
  ,CASE 
   WHEN '4' THEN N'民國年 YYMMDD'
   WHEN '5' THEN N'民國年 YYYMMDD'
   WHEN '1' THEN N'西元年 YYYYMMDD'
   WHEN '2' THEN N'西元年 MMDDYYYY'
   WHEN '3' THEN N'西元年 DDMMYYYY'
   ELSE ""
   END AS "日期格式"
  ,CASE 
   WHEN '1' THEN N'-'
   WHEN '2' THEN N'/'
   ELSE ""
   END AS "日期區隔符號"
  ,MA003 AS "本國幣別"
  ,MA004 AS "營業稅率(%)"
  ,MA005 AS "MRP使用NetChang"
  ,MA006 AS "稅額"
  ,MA007 AS "商品分類方式一"
  ,MA008 AS "商品分類方式二"
  ,MA009 AS "商品分類方式三"
  ,MA010 AS "商品分類方式四"
  ,MA011 AS "庫存現行年月"
  ,MA012 AS "庫存關帳年月"
  ,MA013 AS "帳務凍結日期"
  ,CASE 
   WHEN '1' THEN N'標準成本制'
   WHEN '2' THEN N'月加權平均成本制'
   ELSE ""
   END AS "成本計價方式"
  ,MA015 AS "會計現行期別"
  ,CASE 
   WHEN '1' THEN N'12期'
   WHEN '2' THEN N'13期'
   ELSE ""
   END AS "會計期制"
  ,MA017 AS "更新低階碼"
  ,MA018 AS "會計關帳期別"
  ,MA019 AS "會計現行年度"
  ,MA020 AS "會計關帳年度"
  ,MA021 AS "銀行存款現行年月"
  ,MA022 AS "計薪年月"
  ,MA023 AS "一品號對應多條碼"
  ,CASE 
   WHEN '1' THEN N'單一單位'
   WHEN '2' THEN N'雙單位'
   WHEN '3' THEN N'製造雙單位'
   ELSE ""
   END AS "數量表達方式"
  ,CASE 
   WHEN '1' THEN N'系統日'
   WHEN '2' THEN N'單據日'
   ELSE ""
   END AS "確認日依據"
  ,CASE 
   WHEN '1' THEN N'台灣版'
   WHEN '2' THEN N'大陸版'
   ELSE ""
   END AS "產品功能別"
  ,MA027 AS "應收現行年月"
  ,MA028 AS "應收關帳年月"
  ,MA029 AS "應付現行年月"
  ,MA030 AS "應付關帳年月"
  ,MA031 AS "數值欄位三位一撇"
  ,MA032 AS "執行電子表單流程"
  ,MA033 AS "零用金現行年月"
  ,MA034 AS "產品版號"
  ,CASE 
   WHEN '1' THEN N'資料庫欄位'
   WHEN '2' THEN N'嘜頭文管檔案'
   ELSE ""
   END AS "嘜頭列印依據"
  ,MA036 AS "固定資產現行年月"
  ,CASE 
   WHEN '1' THEN N'品名不可重複'
   WHEN '2' THEN N'品名重複時僅需警告'
   WHEN 'N' THEN N'不控管'
   ELSE ""
   END AS "品號資料管制方式"
  ,CASE 
   WHEN '1' THEN N'客戶簡稱不可重複'
   WHEN '2' THEN N'客戶簡稱重複時僅需警告'
   WHEN 'N' THEN N'不控管'
   ELSE ""
   END AS "客戶資料管制方式"
  ,CASE 
   WHEN '1' THEN N'廠商簡稱不可重複'
   WHEN '2' THEN N'廠商簡稱重複時僅需警告'
   WHEN 'N' THEN N'不控管'
   ELSE ""
   END AS "廠商資料管制方式"
  ,MA040 AS "儲位管理"
  ,MA041 AS "出庫單據存檔時需指定儲位"
  ,MA042 AS "出庫單據存檔時需指定批號"
  ,CASE 
   WHEN '1' THEN N'公用片語'
   WHEN '2' THEN N'個人片語'
   WHEN 'N' THEN N'不預設'
   ELSE ""
   END AS "備註預設"
  ,MA045 AS "預算管理"
  ,MA046 AS "預算科目分類方式"
  ,MA047 AS "營業稅現行年月"
  ,MA050 AS "CRM整合"
  ,MA051 AS "首度適用IFRS年度"
  ,MA052 AS "切帳已執行步驟"
  ,MA053 AS "稅別碼"
  ,MA054 AS "發票流水號碼數"
  ,MA055 AS "單身多稅率"
  ,MA056 AS "稅簽帳務啟動"
  ,MA057 AS "稅制幣別"
  ,CASE 
   WHEN 'X' THEN N'不須切帳'
   WHEN 'N' THEN N'未切帳'
   WHEN 'Y' THEN N'已切帳'
   ELSE ""
   END AS "切帳狀態碼"
  ,MA059 AS "在途倉"

FROM CMSMA
