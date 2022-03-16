--CUSTA_合同資料單頭檔
SELECT
  ,TA001 AS "合同代號"
  ,TA002 AS "合同日期"
  ,TA003 AS "批文號"
  ,TA004 AS "手冊編號"
  ,TA005 AS "口岸"
  ,TA006 AS "生效日"
  ,TA007 AS "失效日"
  ,TA008 AS "備註"
  ,CASE 
   WHEN '1' THEN N'未核准'
   WHEN '2' THEN N'已核准'
   WHEN '3' THEN N'已交易'
   WHEN '9' THEN N'已結案'
   ELSE ""
   END AS "合同狀態"
  ,TA010 AS "核銷日"
  ,TA011 AS "核銷號"
  ,TA012 AS "確認者"
  ,TA013 AS "確認日期"
  ,TA014 AS "核銷者"
  ,TA015 AS "征免性質代碼"
  ,TA016 AS "傳送次數"

FROM CUSTA
