--ACTLC_科目預算異動明細檔
SELECT
  ,LC001 AS "預算代號"
  ,LC002 AS "歸屬日期"
  ,LC003 AS "預算科目"
  ,LC004 AS "預算部門"
  ,CASE 
   WHEN '1' THEN N'請購'
   WHEN '2' THEN N'採購'
   WHEN '3' THEN N'進貨'
   WHEN '4' THEN N'資產採購'
   WHEN '5' THEN N'資產進貨'
   WHEN '6' THEN N'應付憑單'
   WHEN '7' THEN N'費用申請'
   WHEN '8' THEN N'退貨'
   WHEN '9' THEN N'資產請購'
   ELSE ""
   END AS "來源"
  ,LC006 AS "單別"
  ,LC007 AS "單號"
  ,LC008 AS "序號"
  ,LC009 AS "金額"
  ,LC010 AS "確認碼"
  ,LC011 AS "結案碼"
  ,CASE 
   WHEN '1' THEN N'請購'
   WHEN '2' THEN N'採購'
   WHEN '3' THEN N'進貨'
   WHEN '4' THEN N'資產採購'
   WHEN '5' THEN N'資產進貨'
   WHEN '6' THEN N'應付憑單'
   WHEN '7' THEN N'費用申請'
   WHEN '8' THEN N'退貨'
   WHEN '9' THEN N'資產請購'
   ELSE ""
   END AS "前置來源一"
  ,LC013 AS "前置單別一"
  ,LC014 AS "前置單號一"
  ,LC015 AS "前置序號一"
  ,CASE 
   WHEN '1' THEN N'請購'
   WHEN '2' THEN N'採購'
   WHEN '3' THEN N'進貨'
   WHEN '4' THEN N'資產採購'
   WHEN '5' THEN N'資產進貨'
   WHEN '6' THEN N'應付憑單'
   WHEN '7' THEN N'費用申請'
   WHEN '8' THEN N'退貨'
   WHEN '9' THEN N'資產請購'
   ELSE ""
   END AS "後置來源"
  ,LC017 AS "後置單別"
  ,LC018 AS "後置單號"
  ,LC019 AS "後置序號"
  ,LC020 AS "傳票單別"
  ,LC021 AS "傳票單號"
  ,LC022 AS "傳票確認碼"
  ,LC023 AS "過帳碼"
  ,LC024 AS "分批採購"
  ,CASE 
   WHEN '1' THEN N'請購'
   WHEN '2' THEN N'採購'
   WHEN '3' THEN N'進貨'
   WHEN '4' THEN N'資產採購'
   WHEN '5' THEN N'資產進貨'
   WHEN '6' THEN N'應付憑單'
   WHEN '7' THEN N'費用申請'
   WHEN '8' THEN N'退貨'
   WHEN '9' THEN N'資產請購'
   ELSE ""
   END AS "前置來源二"
  ,LC026 AS "前置單別二"
  ,LC027 AS "前置單號二"
  ,LC028 AS "前置序號二"
  ,LC029 AS "分批序號"
  ,LC036 AS "預算日期"

FROM ACTLC
