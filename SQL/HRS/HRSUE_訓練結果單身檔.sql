--HRSUE_訓練結果單身檔
SELECT
  ,UE002 AS "序號"
  ,UE003 AS "部門代號"
  ,UE004 AS "員工代號"
  ,UE005 AS "職務代號"
  ,UE006 AS "執行結果"
  ,UE007 AS "評分"
  ,UE008 AS "心得報告預交日"
  ,UE009 AS "心得報告實交日"
  ,UE010 AS "預計回授日"
  ,UE011 AS "實際回授日"
  ,UE012 AS "回授說明"
  ,UE013 AS "意見彙總"
  ,UE014 AS "證照號碼"
  ,UE015 AS "資料編號"
  ,UE016 AS "訓練時數"
  ,UE017 AS "備註"
  ,UE018 AS "確認碼"
  ,UE019 AS "訓練結果單別"
  ,UE020 AS "訓練結果單號"
  ,CASE 
   WHEN '1' THEN N'報名出席'
   WHEN '2' THEN N'報名未出席'
   WHEN '3' THEN N'未報名出席'
   ELSE ""
   END AS "出席狀況"

FROM HRSUE
