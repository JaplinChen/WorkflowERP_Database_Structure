--WSCMI_專櫃會員資料檔
SELECT
  ,MI001 AS "貴賓卡號"
  ,MI002 AS "姓名"
  ,MI003 AS "地址"
  ,MI004 AS "電話"
  ,MI005 AS "生日"
  ,MI006 AS "卡號生效日"
  ,CASE 
   WHEN '1' THEN N'研究所以上'
   WHEN '2' THEN N'大學'
   WHEN '3' THEN N'專科'
   WHEN '4' THEN N'高中(職)'
   WHEN '5' THEN N'國中以下'
   ELSE ""
   END AS "教育程度"
  ,MI008 AS "縣市"
  ,MI009 AS "郵遞區號"
  ,CASE 
   WHEN '0' THEN N'女'
   WHEN '1' THEN N'男'
   ELSE ""
   END AS "性別"
  ,MI011 AS "身份證號"
  ,MI012 AS "當年消費額"
  ,MI013 AS "累計消費額"
  ,MI014 AS "備註一"
  ,MI015 AS "備註二"
  ,MI016 AS "卡號有效日"
  ,CASE 
   WHEN '1' THEN N'服務'
   WHEN '2' THEN N'商'
   WHEN '3' THEN N'傳播'
   WHEN '4' THEN N'服務'
   WHEN '5' THEN N'金融'
   WHEN '6' THEN N'教師'
   WHEN '7' THEN N'學生'
   WHEN '8' THEN N'家管'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "職業"
  ,CASE 
   WHEN '1' THEN N' 20,000元以下'
   WHEN '2' THEN N' 20,001~30,000元'
   WHEN '3' THEN N' 30,001~40,000元'
   WHEN '4' THEN N' 40,001~50,000元'
   WHEN '5' THEN N' 50,001元 以上'
   ELSE ""
   END AS "月收入"
  ,CASE 
   WHEN '1' THEN N' 2人以下'
   WHEN '2' THEN N' 3至~4人'
   WHEN '3' THEN N' 5人以上'
   ELSE ""
   END AS "家庭人數"
  ,CASE 
   WHEN '1' THEN N' 18歲以下'
   WHEN '2' THEN N' 19~20歲'
   WHEN '3' THEN N' 21~30歲'
   WHEN '4' THEN N' 31~40歲'
   WHEN '5' THEN N' 41~50歲'
   WHEN '1' THEN N' 51歲以上'
   ELSE ""
   END AS "年齡"
  ,MI024 AS "會員卡別"
  ,MI025 AS "發卡通路"
  ,CASE 
   WHEN '1' THEN N'已婚'
   WHEN '2' THEN N'未婚'
   ELSE ""
   END AS "婚姻狀況"
  ,MI027 AS "子女人數(男)"
  ,MI028 AS "子女人數(女)"
  ,MI029 AS "行動電話"
  ,MI030 AS "傳真"
  ,MI031 AS "E_MAIL"
  ,MI032 AS "會員等級"
  ,MI033 AS "最近歸零日"

FROM WSCMI
