--CMSNA_付款條件檔
SELECT
  ,CASE 
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'銷售'
   ELSE ""
   END AS "類別"
  ,NA002 AS "付款條件代號"
  ,NA003 AS "名稱"
  ,CASE 
   WHEN '1' THEN N'結帳後__天'
   WHEN '2' THEN N'結帳後__個月逢__日'
   ELSE ""
   END AS "收(付)款方式別"
  ,NA005 AS "結帳後__天"
  ,NA006 AS "結帳後__月"
  ,NA007 AS "結帳逢__日"
  ,CASE 
   WHEN '1' THEN N'付款後__天'
   WHEN '2' THEN N'付款後__個月逢__日'
   ELSE ""
   END AS "資金實現方式別"
  ,NA009 AS "付款後__天"
  ,NA010 AS "付款後__月"
  ,NA011 AS "付款逢__日"
  ,NA012 AS "取得折扣"
  ,CASE 
   WHEN '1' THEN N'付款提前'
   WHEN '2' THEN N'票期縮短'
   ELSE ""
   END AS "取得折扣方式"
  ,NA014 AS "提早付款天數"
  ,NA015 AS "票期提前天數"
  ,NA016 AS "折扣"
  ,NA017 AS "備註"
  ,CASE 
   WHEN '1' THEN N'結帳日'
   WHEN '2' THEN N'次月初'
   ELSE ""
   END AS "收款日起算日"
  ,CASE 
   WHEN '1' THEN N'付款日'
   WHEN '2' THEN N'次月初'
   ELSE ""
   END AS "實現日起算日"

FROM CMSNA
