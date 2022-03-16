--WSCMD_折扣代號資料檔
SELECT
  ,MD001 AS "折扣代號"
  ,MD002 AS "折扣名稱"
  ,MD003 AS "折數"
  ,MD004 AS "折數底線"
  ,CASE 
   WHEN 'Y' THEN N'可修改營業日報表的金額'
   ELSE ""
   END AS "可修改金額"
  ,MD006 AS "適用優待卡"

FROM WSCMD
