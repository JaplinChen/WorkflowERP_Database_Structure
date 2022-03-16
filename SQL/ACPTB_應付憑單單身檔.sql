--ACPTB_應付憑單單身檔
SELECT
  ,TB001 AS "憑單單別"
  ,TB002 AS "憑單單號"
  ,TB003 AS "憑單序號"
  ,CASE 
   WHEN '1' THEN N'進貨'
   WHEN '2' THEN N'退貨'
   WHEN '3' THEN N'託外進貨'
   WHEN '4' THEN N'託外退貨'
   WHEN '5' THEN N'進口費用'
   WHEN '6' THEN N'出口費用'
   WHEN '7' THEN N'資產取得'
   WHEN '8' THEN N'資產改良'
   WHEN '9' THEN N'其他'
   WHEN 'A' THEN N'預付待抵'
   WHEN 'B' THEN N'採購'
   WHEN 'C' THEN N'維修'
   WHEN 'D' THEN N'資產採購'
   WHEN 'E' THEN N'資產進貨'
   WHEN 'F' THEN N'預付購料'
   WHEN 'G' THEN N'軍福品'
   WHEN 'H' THEN N'進口稅額'
   WHEN 'I' THEN N'預付購料費用'
   WHEN 'J' THEN N'派車運費'
   WHEN 'K' THEN N'模具採購'
   WHEN 'L' THEN N'模具進貨'
   WHEN 'M' THEN N'分批訂金'
   ELSE ""
   END AS "來源"
  ,TB005 AS "憑證單別"
  ,TB006 AS "憑證單號"
  ,TB007 AS "憑證序號"
  ,TB008 AS "憑證日期"
  ,TB009 AS "應付金額"
  ,TB010 AS "差額"
  ,TB011 AS "備註"
  ,TB012 AS "確認碼"
  ,TB013 AS "科目編號"
  ,TB014 AS "費用部門"
  ,TB015 AS "原幣未稅金額"
  ,TB016 AS "原幣稅額"
  ,TB017 AS "本幣未稅金額"
  ,TB018 AS "本幣稅額"
  ,TB019 AS "專案代號"
  ,TB020 AS "訂金序號"
  ,TB021 AS "預算編號"
  ,TB022 AS "預算科目"
  ,TB023 AS "預算部門"
  ,TB024 AS "營業稅稅基"
  ,TB029 AS "營業稅率"

FROM ACPTB
