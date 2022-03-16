--INVTO_品號換算單位變更檔
SELECT
  ,TO001 AS "品號"
  ,TO002 AS "變更版次"
  ,TO003 AS "原換算單位"
  ,TO004 AS "原換算率分子"
  ,TO005 AS "原換算率分母"
  ,TO006 AS "新換算單位"
  ,TO007 AS "新換算率分子"
  ,TO008 AS "新換算率分母"
  ,TO009 AS "保留欄位"

FROM INVTO
