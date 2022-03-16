--PALMD_加班條件設定檔
SELECT
  ,MD001 AS "男不扣稅加班時數"
  ,MD002 AS "女不扣稅加班時數"
  ,MD003 AS "每小時加班費"
  ,MD004 AS "加班時數-1類"
  ,MD005 AS "加班時數-2類"
  ,MD006 AS "加班比率-1類"
  ,MD007 AS "加班比率-2類"
  ,MD008 AS "加班比率-3類"
  ,MD009 AS "加班比率-假日"
  ,MD010 AS "加班費分上下半月發放"
  ,CASE 
   WHEN '1' THEN N'實際時數'
   WHEN '2' THEN N'加班單'
   WHEN '3' THEN N'兩者取小'
   ELSE ""
   END AS "加班時數認定"
  ,MD021 AS "自動確認"

FROM PALMD
