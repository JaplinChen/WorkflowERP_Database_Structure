--ADMML_程式作業關聯單身檔
SELECT
  ,ML001 AS "程式代號"
  ,ML002 AS "序號"
  ,ML003 AS "關聯程式代號"
  ,ML004 AS "啟用"
  ,ML005 AS "來源資料欄位"
  ,ML006 AS "來源資料"
  ,ML007 AS "備註"
  ,ML008 AS "關聯資料欄位"
  ,ML009 AS "關聯資料"
  ,ML010 AS "中文程式名稱"
  ,ML011 AS "簡體程式名稱"
  ,ML012 AS "英文程式名稱"
  ,ML013 AS "越南文程式名稱"
  ,ML014 AS "馬來文程式名稱"
  ,ML015 AS "泰文程式名稱"
  ,ML016 AS "保留程式名稱"
  ,ML017 AS "保留程式名稱"
  ,ML018 AS "保留程式名稱"
  ,ML019 AS "保留程式名稱"
  ,CASE 
   WHEN '1' THEN N'不需合併'
   WHEN '2' THEN N'合併不含分隔符號'
   WHEN '3' THEN N'合併含分隔符號'
   ELSE ""
   END AS "主欄位合併"

FROM ADMML
