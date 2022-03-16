--HRSTJ_錄取人員資料維護檔
SELECT
  ,TJ001 AS "人才編號"
  ,TJ002 AS "姓名"
  ,TJ003 AS "員工代號"
  ,TJ004 AS "申報公司"
  ,TJ005 AS "部門別"
  ,CASE 
   WHEN '1' THEN N'直接費用'
   WHEN '2' THEN N'間接費用'
   WHEN '3' THEN N'管理費用'
   WHEN '4' THEN N'銷售費用'
   WHEN '5' THEN N'研發費用'
   ELSE ""
   END AS "科目種類"
  ,TJ007 AS "職務"
  ,TJ008 AS "職等"
  ,TJ010 AS "投保身分"
  ,TJ011 AS "補助等級"
  ,TJ012 AS "到職日"
  ,CASE 
   WHEN '1' THEN N'月薪'
   WHEN '2' THEN N'日薪'
   ELSE ""
   END AS "薪資別"
  ,TJ014 AS "課稅方式"
  ,CASE 
   WHEN '1' THEN N'每月發放一次'
   WHEN '2' THEN N'每月發放兩次'
   ELSE ""
   END AS "發薪方式"
  ,TJ016 AS "底薪"
  ,TJ017 AS "出生日期"
  ,TJ018 AS "身分證號"
  ,CASE 
   WHEN '1' THEN N'男'
   WHEN '2' THEN N'女'
   ELSE ""
   END AS "性別"
  ,CASE 
   WHEN '1' THEN N'已婚'
   WHEN '2' THEN N'未婚'
   ELSE ""
   END AS "婚姻狀況"
  ,TJ021 AS "聯絡電話一"
  ,TJ022 AS "聯絡電話二"
  ,TJ023 AS "英文全名"
  ,TJ024 AS "主要班別"
  ,TJ025 AS "計全勤"
  ,TJ026 AS "全勤獎金"
  ,TJ027 AS "計加班"
  ,TJ028 AS "加班費"
  ,TJ029 AS "E-MAIL"
  ,TJ030 AS "戶籍地址"
  ,TJ031 AS "郵遞區號"
  ,TJ032 AS "通訊地址"
  ,TJ033 AS "備註"
  ,TJ034 AS "來源代號"
  ,TJ035 AS "介紹人"
  ,TJ036 AS "確定到職"
  ,TJ037 AS "原因"
  ,TJ038 AS "確認碼"
  ,TJ039 AS "確認日期"
  ,TJ040 AS "確認者"
  ,TJ041 AS "面試序號"

FROM HRSTJ
