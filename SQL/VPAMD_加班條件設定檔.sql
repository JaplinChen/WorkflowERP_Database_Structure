--VPAMD_加班條件設定檔
SELECT
  ,MD001 AS "男不扣稅加班時數"
  ,MD002 AS "女不扣稅加班時數"
  ,MD003 AS "每小時加班費"
  ,MD004 AS "加班時數-1類"
  ,MD005 AS "加班時數-2類"
  ,MD006 AS "加班比率-1類"
  ,MD007 AS "加班比率-2類"
  ,MD008 AS "加班比率-3類"
  ,MD009 AS "加班比率-假日(應稅)"
  ,MD010 AS "加班費分上下半月發放"
  ,CASE 
   WHEN '1' THEN N'實際時數'
   WHEN '2' THEN N'加班單'
   WHEN '3' THEN N'兩者取小'
   ELSE ""
   END AS "加班時數認定"
  ,MD021 AS "自動確認"
  ,MD022 AS "加班比率-假日(免稅)"
  ,MD023 AS "加班比率-國定或帶薪假(應稅)"
  ,MD024 AS "加班比率-國定或帶薪假(免稅)"
  ,MD025 AS "大夜班時間起(時:分)"
  ,MD026 AS "大夜班時間迄(時:分)"
  ,MD027 AS "加班比率-大夜班(應稅)"
  ,MD028 AS "加班比率-大夜班(免稅)"
  ,MD029 AS "加班比率-平日(應稅)"
  ,MD030 AS "加班比率-平日(免稅)"
  ,MD031 AS "加班比率-假日超時(應稅)"
  ,MD032 AS "加班比率-假日超時(免稅)"
  ,MD033 AS "加班比率-國定超時(應稅)"
  ,MD034 AS "加班比率-國定超時(免稅)"

FROM VPAMD
