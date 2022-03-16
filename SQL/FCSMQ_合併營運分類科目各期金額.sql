--FCSMQ_合併營運分類科目各期金額
SELECT
  ,MQ001 AS "科目編號"
  ,MQ002 AS "營運分類一"
  ,MQ003 AS "營運分類二"
  ,MQ004 AS "營運分類三"
  ,MQ007 AS "會計年度"
  ,MQ008 AS "期別"
  ,MQ009 AS "記帳幣別"
  ,MQ010 AS "記帳借方金額"
  ,MQ011 AS "記帳貸方金額"
  ,MQ012 AS "功能幣別"
  ,MQ013 AS "功能匯率"
  ,MQ014 AS "功能借方金額"
  ,MQ015 AS "功能貸方金額"
  ,MQ016 AS "合併幣別"
  ,MQ017 AS "合併匯率"
  ,MQ018 AS "合併借方金額"
  ,MQ019 AS "合併貸方金額"
  ,MQ020 AS "營運分類一名稱"
  ,MQ021 AS "營運分類二名稱"
  ,MQ022 AS "營運分類三名稱"
  ,MQ027 AS "統制科目編號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MQ029 AS "公司代號"
  ,MQ030 AS "帳別代號"
  ,MQ031 AS "合併代號"

FROM FCSMQ
