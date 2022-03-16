--YPATB_員工每日出勤資訊檔
SELECT
  ,TB001 AS "員工編號"
  ,TB002 AS "日期"
  ,TB003 AS "部門"
  ,TB004 AS "班別"
  ,TB005 AS "出勤天數"
  ,TB006 AS "休假天數"
  ,TB007 AS "遲到"
  ,TB008 AS "早退"
  ,TB009 AS "遲到早退計算單位"
  ,TB010 AS "平常加班時數-1類"
  ,TB011 AS "平常加班時數-2類"
  ,TB012 AS "平常加班時數-3類"
  ,TB013 AS "假日加班時數"
  ,TB014 AS "正常加班時數"
  ,TB015 AS "休息加班時數"
  ,TB016 AS "節日加班時數"

FROM YPATB
