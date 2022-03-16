--COPTM_訂單選配檔
SELECT
  ,TM001 AS "訂單單別"
  ,TM002 AS "訂單單號"
  ,TM003 AS "訂單序號"
  ,TM004 AS "F/O品號"
  ,CASE 
   WHEN 'F' THEN N'Feature件'
   WHEN 'O' THEN N'Option件'
   ELSE ""
   END AS "類型"
  ,TM006 AS "料件品號"
  ,TM007 AS "數量"
  ,TM008 AS "製程順序"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   ELSE ""
   END AS "材料型態"
  ,TM010 AS "投料時距"
  ,TM011 AS "備註"

FROM COPTM
