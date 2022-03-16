--AJSMB_分錄性質設定檔
SELECT
  ,MB001 AS "單據性質"
  ,MB002 AS "單別"
  ,MB003 AS "傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "底稿開立方式"
  ,MB005 AS "部門管理/科目順序"
  ,MB006 AS "借方會計科目-1"
  ,MB007 AS "借方會計科目-2"
  ,MB008 AS "借方會計科目-3"
  ,MB009 AS "借方會計科目-4"
  ,MB010 AS "借方會計科目-5"
  ,MB011 AS "借方會計科目-6"
  ,MB012 AS "貸方會計科目-1"
  ,MB013 AS "貸方會計科目-2"
  ,MB014 AS "貸方會計科目-3"
  ,MB015 AS "貸方會計科目-4"
  ,MB016 AS "貸方會計科目-5"
  ,MB017 AS "貸方會計科目-6"
  ,MB018 AS "借方摘要來源"
  ,MB019 AS "備註"
  ,CASE 
   WHEN '1' THEN N'原單據分錄'
   WHEN '2' THEN N'成本分錄'
   ELSE ""
   END AS "分錄類別"
  ,MB021 AS "同單號科目彙總"
  ,MB022 AS "貸方摘要來源"

FROM AJSMB
