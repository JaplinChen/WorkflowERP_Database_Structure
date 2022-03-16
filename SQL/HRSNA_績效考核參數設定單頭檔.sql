--HRSNA_績效考核參數設定單頭檔
SELECT
  ,NA001 AS "隱藏欄位"
  ,NA002 AS "自評"
  ,NA003 AS "比率"
  ,NA004 AS "初評"
  ,NA005 AS "比率"
  ,NA006 AS "複評"
  ,NA007 AS "比率"
  ,NA010 AS "評等一"
  ,NA011 AS "分數"
  ,NA012 AS "評等二"
  ,NA013 AS "分數"
  ,NA014 AS "評等三"
  ,NA015 AS "分數"
  ,NA016 AS "評等四"
  ,NA017 AS "分數"
  ,NA018 AS "評等五"
  ,NA019 AS "分數"
  ,CASE 
   WHEN 'N' THEN N'不需要'
   WHEN 'Y' THEN N'拒絕'
   WHEN 'W' THEN N'警告'
   ELSE ""
   END AS "配額超限管理"
  ,NA021 AS "第一次考核名稱"
  ,NA022 AS "起始月份"
  ,NA023 AS "截止月份"
  ,NA024 AS "第二次考核名稱"
  ,NA025 AS "起始月份"
  ,NA026 AS "截止月份"
  ,NA027 AS "第三次考核名稱"
  ,NA028 AS "起始月份"
  ,NA029 AS "截止月份"
  ,NA030 AS "第四次考核名稱"
  ,NA031 AS "起始月份"
  ,NA032 AS "截止月份"
  ,NA033 AS "每單位扣總分"
  ,CASE 
   WHEN '1' THEN N'考核期間'
   WHEN '2' THEN N'每月'
   ELSE ""
   END AS "寬減基礎"
  ,NA035 AS "寬減數量"
  ,NA036 AS "建議"
  ,NA037 AS "調整"
  ,NA038 AS "核定"
  ,CASE 
   WHEN '1' THEN N'直屬主管'
   WHEN '2' THEN N'上層主管'
   ELSE ""
   END AS "起始主管"
  ,NA040 AS "自動產生底薪資料"
  ,CASE 
   WHEN '0' THEN N'個'
   WHEN '1' THEN N'十'
   WHEN '2' THEN N'百'
   WHEN '3' THEN N'千'
   ELSE ""
   END AS "金額整數取位"

FROM HRSNA
