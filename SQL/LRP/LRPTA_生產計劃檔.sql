--LRPTA_生產計劃檔
SELECT
  ,TA001 AS "計劃批號"
  ,TA002 AS "生產品號"
  ,TA003 AS "完工日"
  ,TA004 AS "加工廠商/線別"
  ,TA005 AS "庫別"
  ,TA006 AS "生產數量"
  ,TA007 AS "開工日"
  ,TA008 AS "BOM日期"
  ,TA009 AS "鎖定碼"
  ,TA010 AS "製令別"
  ,TA011 AS "毛需求量"
  ,TA012 AS "庫存量"
  ,TA013 AS "預計進貨"
  ,TA014 AS "預計生產"
  ,TA015 AS "預計銷售"
  ,TA016 AS "預計領用"
  ,TA017 AS "計劃採購"
  ,TA018 AS "計劃生產"
  ,TA019 AS "計劃銷售"
  ,TA020 AS "計劃領用"
  ,TA021 AS "已發放量"
  ,TA022 AS "備註"
  ,TA023 AS "來源單別"
  ,TA024 AS "來源單號"
  ,TA025 AS "來源序號"
  ,TA026 AS "計劃別"
  ,TA027 AS "加工廠商/線別名稱"
  ,TA028 AS "生產序號"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'製令'
   WHEN '3' THEN N'計劃'
   ELSE ""
   END AS "依據"
  ,TA030 AS "預計請購"
  ,TA031 AS "幣別"
  ,TA032 AS "加工單價"
  ,TA033 AS "APS規劃製令號碼"
  ,TA034 AS "請拋採未確認"
  ,TA041 AS "開工時間"
  ,TA042 AS "完工時間"
  ,TA047 AS "採購限制日期"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,TA049 AS "作業時間"
  ,TA050 AS "優先順序"

FROM LRPTA
