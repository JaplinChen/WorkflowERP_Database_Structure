--NOTMD_票據科目設定檔
SELECT
  ,MD001 AS "現金科目"
  ,MD002 AS "應收收票產生傳票"
  ,MD003 AS "應收票據科目"
  ,MD004 AS "應收兌現產生傳票"
  ,MD005 AS "應付票據科目"
  ,MD006 AS "應收還票產生傳票"
  ,MD007 AS "應收票據對方科目"
  ,MD008 AS "應收呆帳產生傳票"
  ,MD009 AS "應付票據對方科目"
  ,MD010 AS "應收票據還票科目"
  ,MD011 AS "抵押借款科目"
  ,MD012 AS "應收票據呆帳科目"
  ,MD013 AS "融資借款科目"
  ,MD014 AS "應付開票產生傳票"
  ,MD015 AS "抵押還息科目"
  ,MD016 AS "應付兌現產生傳票"
  ,MD017 AS "融資還息科目"
  ,MD018 AS "應付退票產生傳票"
  ,MD019 AS "匯兌損失科目"
  ,MD020 AS "應付註銷產生傳票"
  ,MD021 AS "匯兌收益科目"
  ,MD022 AS "應付票據退票科目"
  ,MD023 AS "應付票據註銷科目"
  ,CASE 
   WHEN '1' THEN N'拋轉自動分錄底稿'
   WHEN '2' THEN N'拋轉自動分錄底稿及會計傳票'
   ELSE ""
   END AS "拋轉方式"
  ,MD025 AS "同底稿科目彙總"
  ,MD026 AS "底稿記載原幣"
  ,MD027 AS "應收收票傳票單別"
  ,MD028 AS "應收兌現傳票單別"
  ,MD029 AS "應收還票傳票單別"
  ,MD030 AS "應收呆帳傳票單別"
  ,MD031 AS "應付開票傳票單別"
  ,MD032 AS "應付兌現傳票單別"
  ,MD033 AS "應付退票傳票單別"
  ,MD034 AS "應付註銷傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應收收票底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應收兌現底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應收還票底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應收呆帳底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應付開票底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應付兌現底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應付退票底稿開立方式"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "應付註銷底稿開立方式"
  ,MD043 AS "應收收票借方摘要來源"
  ,MD044 AS "應收兌現借方摘要來源"
  ,MD045 AS "應收還票借方摘要來源"
  ,MD046 AS "應收呆帳借方摘要來源"
  ,MD047 AS "應付開票借方摘要來源"
  ,MD048 AS "應付兌現借方摘要來源"
  ,MD049 AS "應付退票借方摘要來源"
  ,MD050 AS "應付註銷借方摘要來源"
  ,MD051 AS "銀行存提傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "銀行存提底稿開立方式"
  ,MD053 AS "銀行存提借方摘要來源"
  ,MD054 AS "銀行存提同單號科目彙總"
  ,MD055 AS "借還款傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "借還款底稿開立方式"
  ,MD057 AS "借還款借方摘要來源"
  ,MD058 AS "借還款同單號科目彙總"
  ,MD059 AS "手續費科目"
  ,MD060 AS "應收收票貸方摘要來源"
  ,MD061 AS "應收兌現貸方摘要來源"
  ,MD062 AS "應收還票貸方摘要來源"
  ,MD063 AS "應收呆帳貸方摘要來源"
  ,MD064 AS "應付開票貸方摘要來源"
  ,MD065 AS "應付兌現貸方摘要來源"
  ,MD066 AS "應付退票貸方摘要來源"
  ,MD067 AS "應付註銷貸方摘要來源"
  ,MD068 AS "銀行存提貸方摘要來源"
  ,MD069 AS "借還款貸方摘要來源"
  ,MD070 AS "匯兌損益傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "匯兌損益底稿開立方式"
  ,MD072 AS "匯兌損益借方摘要來源"
  ,MD073 AS "匯兌損益貸方摘要來源"
  ,MD074 AS "匯兌損益同單號科目彙總"
  ,CASE 
   WHEN '1' THEN N'依借貸方'
   WHEN '2' THEN N'依原底稿'
   ELSE ""
   END AS "拋轉傳票排列方式"
  ,MD076 AS "外匯交割產生傳票"
  ,MD077 AS "外匯交割科目"
  ,MD078 AS "外匯交割傳票單別"
  ,CASE 
   WHEN '1' THEN N'逐張'
   WHEN '2' THEN N'彙總'
   ELSE ""
   END AS "外匯交割底稿開立方式"
  ,MD080 AS "外匯交割借方摘要來源"
  ,MD081 AS "外匯交割貸方摘要來源"

FROM NOTMD
