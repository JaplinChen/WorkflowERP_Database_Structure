--CSTLA_標準成本月檔
SELECT
  ,LA001 AS "成本計算代號"
  ,LA002 AS "品號"
  ,LA003 AS "年月"
  ,LA004 AS "本階材料成本"
  ,LA005 AS "本階人工"
  ,LA006 AS "本階製費"
  ,LA007 AS "本階加工"
  ,LA008 AS "累計材料成本"
  ,LA009 AS "累計人工"
  ,LA010 AS "累計製費"
  ,LA011 AS "累計加工"
  ,LA012 AS "標準工時"
  ,LA013 AS "標準機時"

FROM CSTLA
