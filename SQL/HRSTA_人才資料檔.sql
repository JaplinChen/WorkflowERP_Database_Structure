--HRSTA_人才資料檔
SELECT
  ,TA001 AS "人才編號"
  ,TA002 AS "建立日期"
  ,TA003 AS "姓名"
  ,TA004 AS "應徵項目[一]"
  ,TA005 AS "員工代號"
  ,TA006 AS "到職日"
  ,TA007 AS "出生日期"
  ,TA008 AS "身分證號"
  ,TA009 AS "性別"
  ,TA010 AS "來源"
  ,TA011 AS "介紹人"
  ,TA012 AS "希望待遇"
  ,TA013 AS "希望工作地點"
  ,TA014 AS "可上班日期"
  ,TA015 AS "聯絡電話一"
  ,TA016 AS "聯絡電話二"
  ,TA017 AS "婚姻狀況"
  ,TA020 AS "身份類別"
  ,TA021 AS "身心障礙等級"
  ,TA022 AS "英文名字"
  ,TA023 AS "血型"
  ,TA024 AS "身高"
  ,TA025 AS "體重"
  ,TA026 AS "戶籍郵遞區號"
  ,TA027 AS "戶籍地址"
  ,TA028 AS "通訊郵遞區號"
  ,TA029 AS "通訊地址"
  ,TA030 AS "公司E-MAIL"
  ,TA031 AS "備註"
  ,TA032 AS "單別"
  ,TA033 AS "應徵項目[二]"
  ,TA034 AS "應徵項目[三]"
  ,CASE 
   WHEN '1' THEN N'國內人士2國外人士'
   ELSE ""
   END AS "身份別"
  ,TA036 AS "護照號碼"
  ,TA037 AS "個人E-MAIL"
  ,TA038 AS "社團經驗"
  ,TA039 AS "才藝資料"
  ,CASE 
   WHEN '1' THEN N'員工'
   WHEN '2' THEN N'人才庫'
   WHEN '3' THEN N'離職員工'
   ELSE ""
   END AS "類別碼"
  ,TA041 AS "更新日期"
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

FROM HRSTA
