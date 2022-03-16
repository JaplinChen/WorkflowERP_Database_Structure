--AJSTA_分錄底稿單頭檔
SELECT
  ,TA001 AS "底稿批號"
  ,TA002 AS "底稿序號"
  ,TA003 AS "產生時間"
  ,TA004 AS "傳票單別"
  ,TA005 AS "傳票單號"
  ,TA006 AS "傳票日期"
  ,TA007 AS "傳票金額"
  ,TA008 AS "本幣借方總金額"
  ,TA009 AS "本幣貸方總金額"
  ,TA010 AS "備註"
  ,TA011 AS "拋轉人員"
  ,TA012 AS "拋轉日期"
  ,TA013 AS "拋轉時間"
  ,TA014 AS "拋轉碼"
  ,TA015 AS "單據性質"
  ,CASE 
   WHEN '1' THEN N'原單據分錄'
   WHEN '2' THEN N'成本分錄'
   ELSE ""
   END AS "分錄類別"
  ,TA017 AS "複製分類碼"

FROM AJSTA
