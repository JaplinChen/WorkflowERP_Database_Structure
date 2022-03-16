--ACTMF_立沖帳目名稱檔
SELECT
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二)'
   ELSE ""
   END AS "立沖帳目順序"
  ,MF002 AS "立沖帳目代號"
  ,MF003 AS "立沖帳目名稱"
  ,MF004 AS "備註"

FROM ACTMF
