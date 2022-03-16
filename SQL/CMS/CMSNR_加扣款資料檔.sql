--CMSNR_加扣款資料檔
SELECT
  ,NR001 AS "加扣款代號"
  ,NR002 AS "加扣款名稱"
  ,CASE 
   WHEN '1' THEN N'按比率'
   WHEN '2' THEN N'取金額'
   ELSE ""
   END AS "加扣方式"
  ,NR004 AS "備註"

FROM CMSNR
