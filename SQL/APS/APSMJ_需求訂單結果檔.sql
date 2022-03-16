--APSMJ_需求訂單結果檔
SELECT
  ,MJ001 AS "訂單編號"
  ,MJ002 AS "品號"
  ,MJ003 AS "訂單數量"
  ,MJ004 AS "預交日"
  ,CASE 
   WHEN 'R' THEN N'指一般真實訂單'
   WHEN 'F' THEN N'指預測性或計畫性訂單'
   WHEN 'A' THEN N'ATP訂單（只耗用存貨）'
   WHEN 'B' THEN N'ATP訂單（耗用存貨與 WIP --已開立之單據）'
   WHEN 'V' THEN N'虛擬訂單'
   ELSE ""
   END AS "訂單型式"
  ,MJ006 AS "優先順序"
  ,MJ007 AS "客戶單號"
  ,MJ008 AS "已交數量"
  ,MJ009 AS "訂單日期"
  ,MJ010 AS "是否納入排程"
  ,MJ011 AS "開立日期"
  ,MJ012 AS "客戶代號"
  ,MJ013 AS "預計開工日"
  ,MJ014 AS "預計完工日"
  ,MJ015 AS "廠別"
  ,MJ016 AS "變更碼"
  ,MJ017 AS "計劃批號"

FROM APSMJ
