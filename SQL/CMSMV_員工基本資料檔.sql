--CMSMV_員工基本資料檔
SELECT
  ,MV001 AS "員工代號"
  ,MV002 AS "姓名"
  ,MV003 AS "申報公司別"
  ,MV004 AS "部門別"
  ,MV005 AS "職等"
  ,MV006 AS "職務"
  ,CASE 
   WHEN '1' THEN N'男'
   WHEN '2' THEN N'女'
   ELSE ""
   END AS "性別"
  ,MV008 AS "出生日期"
  ,MV009 AS "身分證號"
  ,CASE 
   WHEN '1' THEN N'直接費用'
   WHEN '2' THEN N'間接費用'
   WHEN '3' THEN N'管理費用'
   WHEN '4' THEN N'銷售費用'
   WHEN '5' THEN N'研發費用'
   ELSE ""
   END AS "科目種類"
  ,MV011 AS "投保身份"
  ,MV012 AS "學歷"
  ,MV013 AS "專長"
  ,CASE 
   WHEN '1' THEN N'已婚'
   WHEN '2' THEN N'未婚'
   ELSE ""
   END AS "婚姻狀況"
  ,MV015 AS "聯絡電話1"
  ,MV016 AS "聯絡電話2"
  ,MV017 AS "戶籍地址"
  ,MV018 AS "郵遞區號"
  ,MV019 AS "通訊地址"
  ,MV020 AS "E-MAIL"
  ,MV021 AS "到職日"
  ,MV022 AS "離職日"
  ,MV023 AS "退休日"
  ,MV024 AS "補助等級"
  ,MV025 AS "勞保卡號"
  ,MV026 AS "須刷卡"
  ,MV027 AS "主要班別"
  ,MV028 AS "刷卡卡號"
  ,MV029 AS "文管代號"
  ,MV030 AS "健保投保號碼"
  ,MV031 AS "年資"
  ,CASE 
   WHEN '1' THEN N'月薪'
   WHEN '2' THEN N'日薪'
   ELSE ""
   END AS "薪資別"
  ,MV033 AS "底薪"
  ,CASE 
   WHEN 'B' THEN N'銀行'
   WHEN 'P' THEN N'郵局'
   WHEN 'C' THEN N'現金'
   ELSE ""
   END AS "轉存方式"
  ,MV035 AS "行(局)號"
  ,MV036 AS "帳號"
  ,MV037 AS "扶養人數"
  ,MV038 AS "課稅方式"
  ,MV039 AS "固定稅額"
  ,MV040 AS "固定稅率"
  ,CASE 
   WHEN '1' THEN N'每月發放一次'
   WHEN '2' THEN N'每月發放兩次'
   ELSE ""
   END AS "發薪方式"
  ,MV042 AS "計全勤"
  ,MV043 AS "全勤獎金"
  ,MV044 AS "計加班"
  ,MV045 AS "加班費"
  ,MV046 AS "備註"
  ,MV047 AS "英文全名"
  ,MV048 AS "體檢日期"
  ,MV049 AS "入境日期"
  ,MV050 AS "到期日期"
  ,MV051 AS "核准文號"
  ,MV052 AS "試用期滿日"
  ,MV053 AS "預計退休日"
  ,MV054 AS "身份別"
  ,MV055 AS "到職前提撥金額(自提)"
  ,MV056 AS "舊制結清金額"
  ,MV057 AS "到職前提撥金額(公提)"
  ,MV058 AS "行(局)號"
  ,MV059 AS "留職停薪日"
  ,MV060 AS "復職日"
  ,CASE 
   WHEN '1' THEN N'本國人'
   WHEN '2' THEN N'外國人'
   ELSE ""
   END AS "身分別"
  ,MV062 AS "國籍代號"
  ,MV063 AS "護照號碼"
  ,MV064 AS "來源代號"
  ,MV065 AS "介紹人"
  ,MV066 AS "學校代號"
  ,MV067 AS "科系代號"
  ,MV068 AS "語言能力代號"
  ,MV069 AS "證照名稱"
  ,MV070 AS "借支否"
  ,MV071 AS "借支金額"
  ,MV072 AS "計工資墊償基金提繳"
  ,CASE 
   WHEN '1' THEN N'新制'
   WHEN '2' THEN N'舊制'
   WHEN '3' THEN N'年金保險'
   WHEN '4' THEN N'暫不選擇'
   ELSE ""
   END AS "退休金制度"
  ,CASE 
   WHEN '1' THEN N'無舊年資'
   WHEN '2' THEN N'已結清'
   WHEN '3' THEN N'未結清'
   ELSE ""
   END AS "舊制年資結清"
  ,MV075 AS "提繳身分別"
  ,MV076 AS "員工自提比率"
  ,MV077 AS "舊制結清日期"
  ,MV078 AS "舊制年資"
  ,MV079 AS "雇主提撥比率"
  ,MV080 AS "職級"
  ,MV081 AS "登入者代號"
  ,MV083 AS "試用期底薪"
  ,MV087 AS "年假起休日"
  ,MV088 AS "公積金號碼"
  ,MV089 AS "資格證書"
  ,MV090 AS "傳送碼"
  ,MV091 AS "傳送日期"
  ,MV092 AS "有效碼"
  ,MV093 AS "員工照片"
  ,MV094 AS "門店編號"
  ,MV095 AS "民族"
  ,MV096 AS "政治面貌"
  ,MV097 AS "特別毒害/繁重操作者"
  ,MV098 AS "發證日期"
  ,MV099 AS "發證機關"
  ,MV100 AS "薪資幣別"
  ,MV101 AS "稅務編號"
  ,MV102 AS "版次"
  ,MV103 AS "資遣"
  ,MV104 AS "現金發放數"
  ,CASE 
   WHEN '1' THEN N'薪資幣別'
   WHEN '2' THEN N'本國幣別'
   ELSE ""
   END AS "現金幣別"
  ,CASE 
   WHEN '1' THEN N'薪資幣別'
   WHEN '2' THEN N'本國幣別'
   ELSE ""
   END AS "轉帳幣別"
  ,CASE 
   WHEN '1' THEN N'薪資幣別'
   WHEN '2' THEN N'本國幣別'
   ELSE ""
   END AS "全勤獎金幣別"
  ,CASE 
   WHEN '1' THEN N'薪資幣別'
   WHEN '2' THEN N'本國幣別'
   ELSE ""
   END AS "加班費幣別"
  ,CASE 
   WHEN '1' THEN N'薪資幣別'
   WHEN '2' THEN N'本國幣別'
   ELSE ""
   END AS "借支幣別"
  ,MV110 AS "年假與年資起算日"
  ,MV111 AS "加班費代號"
  ,MV112 AS "合約生效日"
  ,MV113 AS "合約失效日"
  ,MV114 AS "種族"
  ,MV115 AS "籍貫"
  ,MV116 AS "發證城市"
  ,MV200 AS "年假起算日"

FROM CMSMV
