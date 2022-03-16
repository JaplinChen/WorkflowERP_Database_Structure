--BCSML_保稅機器設備單頭檔
SELECT
  ,ML001 AS "機器設備編號"
  ,ML002 AS "機器設備中文名稱"
  ,ML003 AS "機器設備英文名稱"
  ,ML004 AS "機器設備規格"
  ,CASE 
   WHEN '1' THEN N'主件'
   WHEN '2' THEN N'附件'
   ELSE ""
   END AS "型態"
  ,ML006 AS "主件編號"
  ,ML007 AS "報單號碼"
  ,ML008 AS "單位"
  ,ML009 AS "數量"
  ,ML010 AS "稅捐記帳金額"
  ,ML011 AS "管理局核准文號"
  ,ML012 AS "放行日期"
  ,ML013 AS "記帳到期日"
  ,ML014 AS "稽核日期"
  ,ML015 AS "備註"
  ,ML016 AS "帳面結餘數"
  ,CASE 
   WHEN '1' THEN N'正常'
   WHEN '2' THEN N'報廢'
   WHEN '3' THEN N'除帳'
   ELSE ""
   END AS "狀態碼"
  ,ML018 AS "除帳日期"
  ,ML019 AS "報單類別"
  ,ML020 AS "異動代碼"

FROM BCSML
