--MTPTB_多角貿易計價及轉撥單價單
SELECT
  ,TB001 AS "流程代號"
  ,TB002 AS "生效日期"
  ,TB003 AS "下游廠商"
  ,CASE 
   WHEN '1' THEN N'按比率'
   WHEN '2' THEN N'取轉撥單價'
   ELSE ""
   END AS "計價方式"
  ,TB005 AS "計價比率"
  ,TB006 AS "序號"

FROM MTPTB
