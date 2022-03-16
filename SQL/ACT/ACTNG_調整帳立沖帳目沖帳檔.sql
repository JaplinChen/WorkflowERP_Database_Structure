--ACTNG_調整帳立沖帳目沖帳檔
SELECT
  ,NG001 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'立沖帳目(一)'
   WHEN '2' THEN N'立沖帳目(二) (單頭KEY)'
   ELSE ""
   END AS "立沖帳目順序"
  ,NG003 AS "立沖帳目代號"
  ,NG004 AS "傳票單別"
  ,NG005 AS "傳票單號"
  ,NG006 AS "傳票序號"
  ,NG007 AS "序號"
  ,NG008 AS "傳票日期"
  ,NG009 AS "傳票單別"
  ,NG010 AS "傳票單號"
  ,NG011 AS "序號"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,NG013 AS "幣別"
  ,NG014 AS "匯率"
  ,NG015 AS "原幣金額"
  ,NG016 AS "本幣金額"
  ,NG017 AS "摘要"
  ,NG018 AS "帳別代號"

FROM ACTNG
