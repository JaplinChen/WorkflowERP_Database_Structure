--INVLH_淨變現價值逆推明細檔
SELECT
  ,LH001 AS "品號"
  ,LH002 AS "年月"
  ,LH003 AS "成品品號"
  ,LH004 AS "組成用量"
  ,LH005 AS "成品溢(跌)價比率"
  ,CASE 
   WHEN '1' THEN N'BOM'
   WHEN '2' THEN N'取替代'
   ELSE ""
   END AS "來源"
  ,LH008 AS "計算碼"
  ,LH012 AS "低階碼"
  ,LH013 AS "本階成本"

FROM INVLH
