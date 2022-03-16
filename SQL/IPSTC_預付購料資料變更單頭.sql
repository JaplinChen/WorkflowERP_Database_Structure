--IPSTC_預付購料資料變更單頭
SELECT
  ,TC001 AS "單別"
  ,TC002 AS "單號"
  ,TC003 AS "變更版次"
  ,TC004 AS "變更日期"
  ,TC005 AS "類別"
  ,TC006 AS "L/C單號"
  ,TC007 AS "變更原因"
  ,TC008 AS "新備註"
  ,TC009 AS "廠別代號"
  ,TC010 AS "確認碼"
  ,TC011 AS "開狀匯率"
  ,TC012 AS "修改金額"
  ,TC013 AS "自籌比率"
  ,TC014 AS "原幣修改自籌金額"
  ,TC015 AS "修改自籌金額"
  ,TC016 AS "隱藏欄位"
  ,TC017 AS "隱藏欄位"
  ,TC018 AS "隱藏欄位"
  ,TC019 AS "隱藏欄位"
  ,TC020 AS "隱藏欄位"
  ,TC021 AS "隱藏欄位"
  ,TC022 AS "隱藏欄位"
  ,TC023 AS "隱藏欄位"
  ,TC024 AS "費用合計"
  ,TC025 AS "單據日期"
  ,TC026 AS "確認者"
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
  ,TC028 AS "傳送次數"
  ,TC029 AS "應付憑單單別"
  ,TC030 AS "應付憑單單號"
  ,TC031 AS "應付憑單序號"
  ,TC032 AS "結帳碼"
  ,TC033 AS "廠商代號"
  ,TC034 AS "開狀幣別"
  ,TC111 AS "原開狀匯率"
  ,TC112 AS "原開狀金額"
  ,TC113 AS "原自籌比率"
  ,TC114 AS "原原幣自籌金額"
  ,TC115 AS "原本幣自籌金額"
  ,TC116 AS "隱藏欄位"
  ,TC117 AS "隱藏欄位"
  ,TC118 AS "隱藏欄位"
  ,TC119 AS "隱藏欄位"
  ,TC120 AS "隱藏欄位"
  ,TC121 AS "隱藏欄位"
  ,TC122 AS "隱藏欄位"
  ,TC123 AS "隱藏欄位"
  ,TC124 AS "原費用合計"
  ,TC125 AS "列印次數"
  ,TC126 AS "原備註"

FROM IPSTC
