--HRSTS_兵役基本資料檔
SELECT
  ,TS001 AS "人才編號"
  ,TS002 AS "單別"
  ,TS003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'免役'
   WHEN '2' THEN N' 役畢'
   ELSE ""
   END AS "類別"
  ,TS005 AS "免役原因"
  ,CASE 
   WHEN '1' THEN N'義務役'
   WHEN '2' THEN N'志願役'
   WHEN '3' THEN N'志願役轉服'
   WHEN '4' THEN N'替代役'
   WHEN '5' THEN N'國防役'
   WHEN '6' THEN N'國民兵'
   WHEN '7' THEN N'補充兵'
   ELSE ""
   END AS "役別"
  ,CASE 
   WHEN '1' THEN N'陸軍'
   WHEN '2' THEN N'海軍'
   WHEN '3' THEN N'空軍'
   WHEN '4' THEN N'憲兵'
   WHEN '5' THEN N'聯勤'
   WHEN '6' THEN N'軍管'
   WHEN '7' THEN N'海巡'
   WHEN '8' THEN N'警備'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "軍種"
  ,CASE 
   WHEN '1' THEN N'少校以上'
   WHEN '2' THEN N'常備尉官'
   WHEN '3' THEN N'預官'
   WHEN '4' THEN N'常備士官'
   WHEN '5' THEN N'預士'
   WHEN '6' THEN N'上兵'
   ELSE ""
   END AS "退伍軍階"
  ,CASE 
   WHEN '1' THEN N'步兵'
   WHEN '2' THEN N'砲兵'
   WHEN '3' THEN N'運輸'
   WHEN '4' THEN N'裝甲'
   WHEN '5' THEN N'工兵'
   WHEN '6' THEN N'兵工'
   WHEN '7' THEN N'主計'
   WHEN '8' THEN N'政戰'
   WHEN 'A' THEN N'行政'
   WHEN 'B' THEN N'資訊作業'
   WHEN 'C' THEN N'自動資料處理'
   WHEN 'D' THEN N'電腦硬體維修'
   WHEN 'E' THEN N'通信'
   WHEN 'F' THEN N'量測'
   WHEN 'G' THEN N'電子'
   WHEN 'H' THEN N'艦艇'
   WHEN 'I' THEN N'警衛'
   WHEN 'J' THEN N'水中爆破'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "兵科"
  ,CASE 
   WHEN '1' THEN N'領導職'
   WHEN '2' THEN N'幕僚職'
   WHEN '3' THEN N'一般兵'
   ELSE ""
   END AS "職務"
  ,TS011 AS "服役起始年月"
  ,TS012 AS "服役截止年月"

FROM HRSTS
