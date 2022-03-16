--PALMQ_薪資會計科目設定單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'直接費用'
   WHEN '2' THEN N'間接費用'
   WHEN '3' THEN N'管理費用'
   WHEN '4' THEN N'銷售費用'
   WHEN '5' THEN N'研發費用'
   ELSE ""
   END AS "科目種類"
  ,CASE 
   WHEN '1' THEN N'上半月'
   WHEN '2' THEN N'下半月'
   ELSE ""
   END AS "上下半月"
  ,MQ003 AS "底(本)薪"
  ,MQ004 AS "加班費免稅部分"
  ,MQ005 AS "加班費課稅部分"
  ,MQ006 AS "全勤獎金"
  ,MQ007 AS "獨立發放"
  ,MQ008 AS "代扣勞保費"
  ,MQ009 AS "借方退休準備金"
  ,MQ010 AS "貸方應付退休金"
  ,MQ016 AS "員工資遣科目"
  ,MQ017 AS "退休金(舊制)科目"

FROM PALMQ
