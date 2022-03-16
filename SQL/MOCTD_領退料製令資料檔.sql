--MOCTD_領退料製令資料檔
SELECT
  ,TD001 AS "領退料單別"
  ,TD002 AS "領退料單號"
  ,TD003 AS "製令單別"
  ,TD004 AS "製令單號"
  ,CASE 
   WHEN '1' THEN N'成套領料'
   WHEN '2' THEN N'補足已領套數'
   WHEN '3' THEN N'補足需領用量'
   ELSE ""
   END AS "領料方式"
  ,TD006 AS "領退料套數"
  ,TD007 AS "庫別代號"
  ,CASE 
   WHEN '1' THEN N'逐批領料'
   WHEN '2' THEN N'自動扣料'
   WHEN '3' THEN N'單獨領料'
   ELSE ""
   END AS "領料碼"
  ,TD009 AS "製程代號[一]"
  ,TD010 AS "製程代號[二]"
  ,TD011 AS "製程代號[三]"
  ,TD012 AS "製程代號[四]"
  ,TD014 AS "備註"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '5' THEN N'客戶供料*.全部'
   ELSE ""
   END AS "材料型態"
  ,TD016 AS "預計領料"
  ,CASE 
   WHEN '1' THEN N'篩選條件'
   WHEN '2' THEN N'指定庫別'
   ELSE ""
   END AS "庫別型態"
  ,TD018 AS "移入工序"
  ,TD019 AS "移入製程"
  ,TD020 AS "移轉單別"
  ,TD021 AS "移轉單號"
  ,TD022 AS "移轉序號"
  ,TD023 AS "輸入序號"
  ,TD028 AS "SFT批號"
  ,TD500 AS "保留欄位"

FROM MOCTD
