--ACTMV_立沖帳目沖帳檔
SELECT
  ,MV001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二) (單頭KEY)'
   ELSE ""
   END AS "立沖帳目順序"
  ,MV003 AS "立沖帳目代號"
  ,MV004 AS "傳票單別"
  ,MV005 AS "傳票單號"
  ,MV006 AS "傳票序號"
  ,MV007 AS "序號"
  ,MV008 AS "傳票日期"
  ,MV009 AS "傳票單別"
  ,MV010 AS "傳票單號"
  ,MV011 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,MV013 AS "幣別"
  ,MV014 AS "匯率"
  ,MV015 AS "原幣金額"
  ,MV016 AS "本幣金額"
  ,MV017 AS "摘要"

FROM ACTMV
