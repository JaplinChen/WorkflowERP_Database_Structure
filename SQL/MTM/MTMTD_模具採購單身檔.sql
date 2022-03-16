--MTMTD_模具採購單身檔
SELECT
  ,TD001 AS "單別"
  ,TD002 AS "單號"
  ,TD003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'一次付清'
   WHEN '2' THEN N'預付訂金'
   WHEN '3' THEN N'試模'
   WHEN '4' THEN N'試模完成'
   WHEN '5' THEN N'模具完工'
   WHEN '6' THEN N'其它(一)'
   WHEN '7' THEN N'其它(二)'
   WHEN '8' THEN N'其它(三)'
   ELSE ""
   END AS "付款說明"
  ,TD005 AS "付款比率"
  ,TD006 AS "應付款金額"
  ,TD007 AS "預計付款日期"
  ,TD008 AS "結帳碼"
  ,TD009 AS "憑單單別"
  ,TD010 AS "憑單單號"
  ,TD011 AS "憑單序號"
  ,TD012 AS "備註"
  ,TD013 AS "原幣未稅金額"
  ,TD014 AS "原幣稅額"
  ,TD015 AS "本幣未稅金額"
  ,TD016 AS "本幣稅額"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"

FROM MTMTD
