--VPAMB_津貼扣款條件設定檔
SELECT
  ,MB001 AS "津貼扣款代號"
  ,MB002 AS "津貼扣款名稱"
  ,CASE 
   WHEN '1' THEN N'加項-1扣項'
   ELSE ""
   END AS "加/扣項"
  ,MB004 AS "計入加班費"
  ,MB005 AS "計請假扣款"
  ,MB006 AS "計津貼扣款"
  ,MB007 AS "抵減應課稅所得"
  ,CASE 
   WHEN '1' THEN N'以單價乘數量'
   WHEN '2' THEN N'以單價乘出勤天數'
   WHEN '3' THEN N'固定金額'
   WHEN '4' THEN N'依員工底薪計算'
   WHEN '5' THEN N'依員工應付薪資計算'
   WHEN '6' THEN N'依員工純底薪計算'
   ELSE ""
   END AS "金額計算方式"
  ,MB009 AS "數量計算單位"
  ,MB010 AS "單價(如全公司統一)"
  ,MB011 AS "日薪者單價底薪比率"
  ,MB012 AS "月薪者單價底薪比率"
  ,MB013 AS "金額(如全公司統一)"
  ,MB014 AS "日薪者金額底薪比率"
  ,MB015 AS "月薪者金額底薪比率"
  ,CASE 
   WHEN '1' THEN N'全數在上半月'
   WHEN '2' THEN N'全數在下半月'
   WHEN '3' THEN N'上下半月各一半'
   WHEN '4' THEN N'上下半月個別計算'
   ELSE ""
   END AS "上下半月計算方式"
  ,CASE 
   WHEN '1' THEN N'不予計算'
   WHEN '2' THEN N'全數計算'
   WHEN '3' THEN N'按天數比率計算'
   ELSE ""
   END AS "日薪者殘月計算方式"
  ,CASE 
   WHEN '1' THEN N'不予計算'
   WHEN '2' THEN N'全數計算'
   WHEN '3' THEN N'按天數比率計算'
   ELSE ""
   END AS "月薪者殘月計算方式"
  ,MB019 AS "日薪出勤天數含請假給薪天數"
  ,MB020 AS "免稅額上限"
  ,MB021 AS "非直接給付津貼"
  ,MB023 AS "納入投保薪資"
  ,CASE 
   WHEN '1' THEN N'員工底薪'
   WHEN '2' THEN N'員工出勤底薪'
   ELSE ""
   END AS "選擇底薪"
  ,MB029 AS "幣別"
  ,MB030 AS "備註"

FROM VPAMB
