--MTMTB_模具訂單單身檔
SELECT
  ,TB001 AS "單別"
  ,TB002 AS "單號"
  ,TB003 AS "序號"
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
   END AS "應收款說明"
  ,TB005 AS "應收款比率"
  ,TB006 AS "應收款金額"
  ,TB007 AS "預計收款日期"
  ,TB008 AS "結帳碼"
  ,TB009 AS "結帳單別"
  ,TB010 AS "結帳單號"
  ,TB011 AS "結帳序號"
  ,TB012 AS "備註"
  ,TB013 AS "原幣未稅金額"
  ,TB014 AS "原幣稅額"
  ,TB015 AS "本幣未稅金額"
  ,TB016 AS "本幣稅額"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"

FROM MTMTB
