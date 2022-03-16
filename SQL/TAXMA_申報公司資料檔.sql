--TAXMA_申報公司資料檔
SELECT
  ,MA001 AS "申報公司"
  ,MA002 AS "簡稱"
  ,MA003 AS "統一編號"
  ,MA004 AS "營利事業稅籍編號"
  ,MA005 AS "營業人名稱"
  ,MA006 AS "負責人"
  ,MA007 AS "營業地址(一)"
  ,MA008 AS "營業地址(二)"
  ,MA009 AS "備註"
  ,MA010 AS "TEL_NO(一)"
  ,MA011 AS "所屬國稅局"
  ,MA012 AS "所屬國稅局分局"
  ,MA013 AS "房屋稅籍編號"
  ,MA014 AS "已上市上櫃"
  ,CASE 
   WHEN '1' THEN N'自行申報'
   WHEN '2' THEN N'記帳士申報'
   WHEN '3' THEN N'記帳及報稅代理業務人申報'
   WHEN '4' THEN N'會計師申報'
   ELSE ""
   END AS "自行或委託辦理申報註記"
  ,MA016 AS "申報人身分證統一編號"
  ,MA017 AS "E-AMIL"
  ,MA018 AS "所屬縣市別代號"
  ,MA019 AS "勞工保險證號"
  ,MA020 AS "勞工保險證號檢查碼"
  ,MA021 AS "健保投保單位代號"
  ,MA022 AS "勞工保險業別代號"
  ,MA029 AS "申報人姓名"
  ,MA030 AS "申報人電話"
  ,MA031 AS "代理申報人證書(登錄)字號"
  ,MA032 AS "稅捐稽徵處名稱"
  ,MA033 AS "核准日"
  ,MA034 AS "核准文"
  ,MA035 AS "核准號"

FROM TAXMA
