--QMSTM_其他檢驗單單頭檔
SELECT
  ,TM001 AS "單別"
  ,TM002 AS "單號"
  ,TM003 AS "序號"
  ,TM004 AS "檢驗日期"
  ,TM005 AS "檢驗期限"
  ,TM006 AS "檢驗人員"
  ,TM007 AS "破壞數"
  ,TM008 AS "驗退數"
  ,TM009 AS "扣款金額"
  ,TM010 AS "扣款原因"
  ,TM011 AS "判定"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,TM013 AS "列印次數"
  ,TM014 AS "確認碼"
  ,TM015 AS "備註"
  ,TM019 AS "單據日期"
  ,TM020 AS "確認者"
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
  ,TM022 AS "總抽樣數量"
  ,TM023 AS "不良數量合計"
  ,TM024 AS "傳送次數"
  ,TM025 AS "品管類別"
  ,TM026 AS "類別"
  ,TM027 AS "品號"
  ,TM028 AS "品名"
  ,TM029 AS "規格"
  ,TM030 AS "異動日期"
  ,TM031 AS "異動數量"
  ,TM032 AS "異動單位"
  ,TM033 AS "異動庫別"
  ,TM037 AS "批號"

FROM QMSTM
