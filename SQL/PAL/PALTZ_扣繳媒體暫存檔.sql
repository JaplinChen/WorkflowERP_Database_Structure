--PALTZ_扣繳媒體暫存檔
SELECT
  ,TZ001 AS "稽徵機關代號"
  ,TZ002 AS "媒體單位代號"
  ,TZ003 AS "流水單號"
  ,TZ004 AS "資料區分"
  ,CASE 
   WHEN '1' THEN N'國內'
   WHEN '2' THEN N'國外'
   ELSE ""
   END AS "國內國外"
  ,CASE 
   WHEN '1' THEN N'個人'
   WHEN '2' THEN N'非個人'
   ELSE ""
   END AS "個人非個人"
  ,TZ007 AS "類別+類別區分"
  ,TZ008 AS "份數"
  ,TZ009 AS "統一編號"
  ,TZ010 AS "給付總額"
  ,TZ011 AS "扣繳稅額"
  ,TZ012 AS "給付淨額"
  ,TZ013 AS "營利事業稅籍編號"
  ,TZ014 AS "空白"
  ,TZ015 AS "房屋稅籍編號"
  ,TZ016 AS "空白"
  ,TZ017 AS "錯誤註記"
  ,TZ018 AS "年度"
  ,TZ019 AS "檔案製作日期"
  ,TZ020 AS "起始流水號"
  ,TZ021 AS "截止流水號"
  ,TZ022 AS "稅額扣抵比率"
  ,TZ023 AS "稅額抵繳比率"
  ,TZ024 AS "分配次數"
  ,TZ025 AS "除權日"
  ,TZ026 AS "預留1"
  ,TZ027 AS "預留2"
  ,TZ028 AS "來源標籤"
  ,TZ029 AS "預留3"
  ,TZ030 AS "起始所屬年月"
  ,TZ031 AS "截止所屬年月"
  ,TZ032 AS "媒體檔案編號"
  ,TZ033 AS "SORT-KEY"

FROM PALTZ
