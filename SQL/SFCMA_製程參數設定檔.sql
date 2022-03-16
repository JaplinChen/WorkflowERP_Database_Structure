--SFCMA_製程參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'報工單'
   WHEN '2' THEN N'移轉單'
   ELSE ""
   END AS "生產工時蒐集依據"
  ,MA002 AS "實際工時回饋包含重工完成"
  ,MA003 AS "實際工時回饋包含報廢"
  ,MA004 AS "實際工時回饋包含正常完成"
  ,MA005 AS "報廢數量回饋製令報廢數量"
  ,MA006 AS "移出數量可超出投入數量"
  ,CASE 
   WHEN '1' THEN N''
   WHEN '時' THEN N''
   WHEN '分' THEN N'秒'
   WHEN '2' THEN N''
   WHEN '分' THEN N'秒'
   ELSE ""
   END AS "人時/機時輸入方式"

FROM SFCMA
