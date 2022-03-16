--PCMTD_借支申請單身檔
SELECT
  ,TD001 AS "借支單別"
  ,TD002 AS "借支單號"
  ,TD003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借支歸還'
   WHEN '2' THEN N'費用申請'
   ELSE ""
   END AS "沖銷來源"
  ,TD005 AS "沖銷日期"
  ,TD006 AS "沖銷單別"
  ,TD007 AS "沖銷單號"
  ,TD008 AS "沖銷原幣金額"
  ,TD009 AS "備註"

FROM PCMTD
