--ASTTP_資產進貨單單身檔
SELECT
  ,TP001 AS "單別"
  ,TP002 AS "單號"
  ,TP003 AS "序號"
  ,TP005 AS "品名"
  ,TP006 AS "規格"
  ,TP007 AS "進貨數量"
  ,TP008 AS "單位"
  ,TP009 AS "採購單別"
  ,TP010 AS "採購單號"
  ,TP011 AS "採購序號"
  ,TP012 AS "驗收日期"
  ,TP013 AS "驗收數量"
  ,TP014 AS "計價數量"
  ,TP015 AS "驗退數量"
  ,TP016 AS "原幣單位進價"
  ,TP017 AS "原幣進貨金額"
  ,TP018 AS "原幣扣款金額"
  ,TP019 AS "進貨費用"
  ,TP020 AS "扣款說明"
  ,TP021 AS "暫不付款"
  ,TP022 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'待驗'
   WHEN '2' THEN N'合格'
   WHEN '3' THEN N'不良'
   WHEN '4' THEN N'特採'
   ELSE ""
   END AS "檢驗狀態"
  ,TP024 AS "驗退碼"
  ,TP025 AS "逾期碼"
  ,TP026 AS "結帳碼"
  ,TP027 AS "更新碼"
  ,TP028 AS "備註"
  ,TP029 AS "確認者"
  ,TP030 AS "應付憑單別"
  ,TP031 AS "應付憑單號"
  ,TP032 AS "應付憑單序號"
  ,TP033 AS "專案代號"
  ,TP034 AS "產生分錄碼"
  ,TP035 AS "原幣未稅金額"
  ,TP036 AS "原幣稅額"
  ,TP037 AS "本幣未稅金額"
  ,TP038 AS "本幣稅額"
  ,TP039 AS "資產編號"
  ,TP040 AS "預算編號"
  ,TP041 AS "預算科目"
  ,TP042 AS "預算部門"
  ,CASE 
   WHEN '1' THEN N'資產'
   WHEN '2' THEN N'費用'
   ELSE ""
   END AS "性質"

FROM ASTTP
