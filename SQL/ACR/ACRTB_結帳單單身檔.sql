--ACRTB_結帳單單身檔
SELECT
  ,TB001 AS "結帳單別"
  ,TB002 AS "結帳單號"
  ,TB003 AS "結帳序號"
  ,CASE 
   WHEN '1' THEN N'銷貨'
   WHEN '2' THEN N'銷退'
   WHEN '3' THEN N'營業日報'
   WHEN '4' THEN N'資產出售'
   WHEN '5' THEN N'預收待抵'
   WHEN '6' THEN N'訂單'
   WHEN '7' THEN N'維修'
   WHEN '8' THEN N'還票'
   WHEN '9' THEN N'其他'
   WHEN 'A' THEN N'專櫃對帳'
   WHEN 'B' THEN N'模具訂單'
   WHEN 'C' THEN N'模具銷貨'
   WHEN 'M' THEN N'分批訂金'
   ELSE ""
   END AS "來源"
  ,TB005 AS "憑證單別"
  ,TB006 AS "憑證單號"
  ,TB007 AS "憑證序號"
  ,TB008 AS "憑證日期"
  ,TB009 AS "應收金額"
  ,TB010 AS "差額"
  ,TB011 AS "備註"
  ,TB012 AS "確認碼"
  ,TB013 AS "科目編號"
  ,TB014 AS "抽成前金額"
  ,TB015 AS "抽成率"
  ,TB016 AS "抽成代號"
  ,TB017 AS "原幣未稅金額"
  ,TB018 AS "原幣稅額"
  ,TB019 AS "本幣未稅金額"
  ,TB020 AS "本幣稅額"
  ,TB021 AS "部門別"
  ,TB022 AS "專案代號"
  ,TB023 AS "訂金序號"
  ,TB029 AS "營業稅率"
  ,TB030 AS "借方科目"
  ,TB031 AS "稅額科目"

FROM ACRTB
