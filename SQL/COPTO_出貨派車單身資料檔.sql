--COPTO_出貨派車單身資料檔
SELECT
  ,TO001 AS "單別"
  ,TO002 AS "單號"
  ,TO003 AS "序號"
  ,CASE 
   WHEN '1' THEN N'銷貨'
   WHEN '2' THEN N'異動單據'
   WHEN '3' THEN N'轉撥單據'
   WHEN '4' THEN N'借出入單據'
   WHEN '5' THEN N'借出入歸還單據'
   ELSE ""
   END AS "來源"
  ,TO005 AS "憑證單別"
  ,TO006 AS "憑證單號"
  ,TO007 AS "對象代碼"
  ,TO008 AS "對象簡稱"
  ,TO009 AS "業務人員"
  ,TO010 AS "件數"
  ,TO011 AS "本單材積"
  ,TO012 AS "本單重量"
  ,TO013 AS "單件運費"
  ,TO014 AS "總運費"
  ,TO015 AS "路線別"
  ,TO016 AS "備註"
  ,TO017 AS "確認碼"
  ,TO018 AS "部門代號"
  ,TO019 AS "應付憑單別"
  ,TO020 AS "應付憑單號"
  ,TO021 AS "應付憑單序號"
  ,TO022 AS "運費稅額"
  ,TO023 AS "未稅運費"
  ,TO024 AS "結帳碼"
  ,TO030 AS "送貨地址一"
  ,TO031 AS "送貨地址二"

FROM COPTO
