--COPTP_訂單變更選配檔
SELECT
  ,TP001 AS "訂單單別"
  ,TP002 AS "訂單單號"
  ,TP003 AS "變更版次"
  ,TP004 AS "序號"
  ,TP005 AS "新F/O品號"
  ,CASE 
   WHEN 'F' THEN N'Feature件'
   WHEN 'O' THEN N'Option件'
   ELSE ""
   END AS "新類型"
  ,TP007 AS "新料件品號"
  ,TP008 AS "新數量"
  ,TP009 AS "新製程順序"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   ELSE ""
   END AS "新材料型態"
  ,TP011 AS "新投料時距"
  ,TP012 AS "新備註"
  ,TP105 AS "原F/O品號"
  ,CASE 
   WHEN 'F' THEN N'Feature件'
   WHEN 'O' THEN N'Option件'
   ELSE ""
   END AS "原類型"
  ,TP107 AS "原料件品號"
  ,TP108 AS "原數量"
  ,TP109 AS "原製程順序"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   ELSE ""
   END AS "原材料型態"
  ,TP111 AS "原投料時距"
  ,TP112 AS "原備註"

FROM COPTP
