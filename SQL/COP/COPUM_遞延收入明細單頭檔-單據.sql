--COPUM_遞延收入明細單頭檔-單據
SELECT
  ,CASE 
   WHEN '1' THEN N'銷貨'
   WHEN '2' THEN N'銷退'
   WHEN '3' THEN N'結帳單'
   ELSE ""
   END AS "來源"
  ,UM002 AS "單別"
  ,UM003 AS "單號"
  ,UM004 AS "序號"
  ,UM005 AS "產生遞延傳票"
  ,UM006 AS "產生迴轉傳票"
  ,UM007 AS "遞延年月"
  ,UM008 AS "品號"
  ,UM009 AS "總遞延收入"
  ,UM010 AS "遞延收入會計科目"
  ,UM011 AS "銷貨收入會計科目"
  ,UM012 AS "部門代號"
  ,UM013 AS "遞延傳票單別"
  ,UM014 AS "遞延傳票單號"
  ,UM015 AS "傳票序號-遞延收入"
  ,UM016 AS "備註"
  ,UM017 AS "本幣未稅金額"
  ,UM018 AS "帳別代號"
  ,UM024 AS "傳票序號-銷貨收入"
  ,UM027 AS "客戶代號"
  ,UM028 AS "業務員"
  ,UM029 AS "保固佔售價比率"
  ,UM030 AS "保固期數(月數)"
  ,UM031 AS "銷貨目前期數"

FROM COPUM
