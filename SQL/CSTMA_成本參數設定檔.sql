--CSTMA_成本參數設定檔
SELECT
  ,MA001 AS "成本分類方式"
  ,CASE 
   WHEN '1' THEN N'依實際投入材料成本計算'
   WHEN '2' THEN N'依投入套數計算'
   WHEN '3' THEN N'無在製約當產量'
   WHEN '4' THEN N'依實際投入工時計算'
   ELSE ""
   END AS "材料在製約量計算方式"
  ,CASE 
   WHEN '1' THEN N'依實際投入材料成本計算'
   WHEN '2' THEN N'依投入套數計算'
   WHEN '3' THEN N'無在製約當產量'
   WHEN '4' THEN N'依實際投入工時計算'
   ELSE ""
   END AS "人工製費在製約量計算"
  ,CASE 
   WHEN '1' THEN N'標準'
   WHEN '2' THEN N'實際'
   ELSE ""
   END AS "工資率及製費分攤率採"
  ,MA005 AS "半成品投入歸材料成本"
  ,CASE 
   WHEN '1' THEN N'依實際投入材料成本計算'
   WHEN '2' THEN N'依投入套數計算(領料套數)'
   WHEN '3' THEN N'無在製約當產量'
   WHEN '4' THEN N'依標準加工費用計算'
   ELSE ""
   END AS "加工費用在製約量計算"
  ,CASE 
   WHEN '1' THEN N'依數量'
   WHEN '2' THEN N'依比率'
   ELSE ""
   END AS "聯產品成本分攤方式"
  ,MA008 AS "託外製令須分攤人工製費"
  ,MA009 AS "分攤生產線別"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費分攤依據"
  ,MA011 AS "標準工資率"
  ,MA012 AS "標準變動製費分攤率"
  ,MA013 AS "更新標準成本之成本計算代號"
  ,CASE 
   WHEN '1' THEN N'拋轉自動分錄底稿'
   WHEN '2' THEN N'拋轉自動分錄底稿及會計憑證'
   ELSE ""
   END AS "拋轉方式"
  ,MA015 AS "傳票單別"
  ,MA016 AS "標準成本調整科目"
  ,MA017 AS "直接材料價格差異科目"
  ,MA018 AS "直接材料用量差異科目"
  ,MA019 AS "工資率差異科目"
  ,MA020 AS "人工效能差異科目"
  ,MA021 AS "變動製造費用耗用差異科目"
  ,MA022 AS "變動製造費用效能差異科目"
  ,MA023 AS "借方摘要-1"
  ,MA024 AS "貸方摘要-1"
  ,MA025 AS "借方摘要-2"
  ,MA026 AS "貸方摘要-2"
  ,MA027 AS "對方科目(存貨)"
  ,MA028 AS "成本差異對方科目"
  ,MA029 AS "同底稿科目彙總"
  ,MA030 AS "標準固定製費分攤率"
  ,MA031 AS "固定製造費用差異科目"
  ,MA032 AS "加工費用差異科目"
  ,MA033 AS "直接材料價格差異產生傳票"
  ,MA034 AS "直接材料用量差異產生傳票"
  ,MA035 AS "工資率差異產生傳票"
  ,MA036 AS "人工效能差異產生傳票"
  ,MA037 AS "變動製造費用耗用差異產生傳票"
  ,MA038 AS "變動製造費用效能差異產生傳票"
  ,MA039 AS "固定製造費用差異產生傳票"
  ,MA040 AS "加工費用差異產生傳票"
  ,CASE 
   WHEN '1' THEN N'依借貸方'
   WHEN '2' THEN N'依原底稿'
   ELSE ""
   END AS "拋轉傳票排列方式"
  ,MA042 AS "同單號科目彙總"
  ,MA043 AS "對方科目(存貨_製費)"
  ,MA044 AS "對方科目(存貨_加工)"
  ,MA045 AS "對方科目(在製_材料)"
  ,MA046 AS "對方科目(在製_材料)"
  ,MA047 AS "對方科目(在製_人工)"
  ,MA048 AS "對方科目(在製_製費)"
  ,MA049 AS "對方科目(在製_加工)"
  ,MA050 AS "加工費用用量差異科目"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'變動'
   WHEN '2' THEN N'固定'
   ELSE ""
   END AS "製造費用一類別"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'變動'
   WHEN '2' THEN N'固定'
   ELSE ""
   END AS "製造費用二類別"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'變動'
   WHEN '2' THEN N'固定'
   ELSE ""
   END AS "製造費用三類別"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'變動'
   WHEN '2' THEN N'固定'
   ELSE ""
   END AS "製造費用四類別"
  ,CASE 
   WHEN '0' THEN N'無'
   WHEN '1' THEN N'變動'
   WHEN '2' THEN N'固定'
   ELSE ""
   END AS "製造費用五類別"

FROM CSTMA
