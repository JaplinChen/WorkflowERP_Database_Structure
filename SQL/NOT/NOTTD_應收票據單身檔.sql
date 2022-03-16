--NOTTD_應收票據單身檔
SELECT
  ,TD001 AS "票號"
  ,TD002 AS "序號"
  ,TD003 AS "異動日"
  ,CASE 
   WHEN '1' THEN N'收票,'
   WHEN '2' THEN N'託收,'
   WHEN '3' THEN N'融資,'
   WHEN '4' THEN N'轉付,'
   WHEN '5' THEN N'退票,'
   WHEN '6' THEN N'兌現,'
   WHEN '7' THEN N'還票,'
   WHEN '8' THEN N'呆帳,'
   WHEN '9' THEN N'撤票,'
   WHEN 'A' THEN N'再收,'
   WHEN 'B' THEN N'貼現,'
   WHEN 'C' THEN N'L/C抵押,'
   WHEN 'D' THEN N'L/C抵押還原'
   ELSE ""
   END AS "異動別"
  ,TD005 AS "匯率"
  ,TD006 AS "傳票單別"
  ,TD007 AS "傳票單號"
  ,TD008 AS "產生分錄碼"

FROM NOTTD
