--MTMTM_模具變更單頭檔
SELECT
  ,TM001 AS "模具編號"
  ,TM002 AS "原中文名稱"
  ,TM003 AS "原英文名稱"
  ,TM004 AS "原一模幾穴"
  ,TM005 AS "原模具材質"
  ,TM006 AS "原圖號"
  ,TM007 AS "原變更版次"
  ,TM008 AS "新中文名稱"
  ,TM009 AS "新英文名稱"
  ,TM010 AS "新一模幾穴"
  ,TM011 AS "新模具材質"
  ,TM012 AS "新圖號"
  ,TM013 AS "變更版次"
  ,TM014 AS "刪除模具"
  ,TM015 AS "變更日期"
  ,TM016 AS "備註"
  ,TM017 AS "修改者"
  ,TM018 AS "確認者"
  ,TM019 AS "確認日期"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態"
  ,TM022 AS "列印次數"
  ,TM023 AS "傳送次數"

FROM MTMTM
