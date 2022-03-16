--FCSTE_資料匯出入欄位設定單頭檔
SELECT
  ,TE001 AS "檔案代號"
  ,CASE 
   WHEN '1' THEN N'匯入'
   WHEN '2' THEN N'匯出'
   ELSE ""
   END AS "類型"
  ,TE003 AS "EXCEL起始列數"
  ,TE004 AS "日期格式"
  ,TE005 AS "日期區隔符號"
  ,TE006 AS "匯出入資料檔名"
  ,TE007 AS "備註"
  ,TE008 AS "第一個資料列有資料行名稱"
  ,TE009 AS "公司代號"

FROM FCSTE
