--PURTV_請購變更單單身資料檔
SELECT
  ,TV001 AS "請購變更單別"
  ,TV002 AS "請購變更單號"
  ,TV003 AS "版次"
  ,TV004 AS "序號"
  ,TV005 AS "品號"
  ,TV006 AS "品名"
  ,TV007 AS "規格"
  ,TV008 AS "請購單位"
  ,TV009 AS "庫別"
  ,TV010 AS "請購數量"
  ,TV011 AS "供應廠商"
  ,TV012 AS "需求日期"
  ,TV013 AS "採購人員"
  ,TV014 AS "採購數量"
  ,TV015 AS "採購單位"
  ,TV016 AS "採購幣別"
  ,TV017 AS "採購單價"
  ,TV018 AS "採購金額"
  ,TV019 AS "交貨日"
  ,TV020 AS "製造商"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TV022 AS "請購小單位"
  ,TV023 AS "採購小單位"
  ,TV024 AS "參考單別"
  ,TV025 AS "參考單號"
  ,TV026 AS "參考序號"
  ,TV027 AS "急料"
  ,TV028 AS "承認型號"
  ,TV029 AS "請購包裝數量"
  ,TV030 AS "採購包裝數量"
  ,TV031 AS "請購包裝單位"
  ,TV032 AS "採購包裝單位"
  ,TV033 AS "採購備註"
  ,TV034 AS "指定結案"
  ,TV035 AS "鎖定碼"
  ,TV036 AS "採購碼"
  ,TV037 AS "確認碼"
  ,TV038 AS "變更原因"
  ,TV039 AS "新請購備註"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TV041 AS "專案代號"
  ,TV042 AS "匯率"
  ,TV043 AS "本幣金額"
  ,TV044 AS "預算編號"
  ,TV045 AS "預算科目"
  ,TV046 AS "請購單價"
  ,TV047 AS "請購幣別"
  ,TV048 AS "請購金額"
  ,TV054 AS "稅別碼"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,TV056 AS "單身多稅率"
  ,TV057 AS "營業稅率"
  ,TV104 AS "原序號"
  ,TV105 AS "原品號"
  ,TV106 AS "原品名"
  ,TV107 AS "原規格"
  ,TV108 AS "原請購單位"
  ,TV109 AS "原庫別"
  ,TV110 AS "原請購數量"
  ,TV111 AS "原供應廠商"
  ,TV112 AS "原需求日期"
  ,TV113 AS "原採購人員"
  ,TV114 AS "原採購數量"
  ,TV115 AS "原採購單位"
  ,TV116 AS "原採購幣別"
  ,TV117 AS "原採購單價"
  ,TV118 AS "原採購金額"
  ,TV119 AS "原交貨日"
  ,TV120 AS "原製造商"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "原課稅別"
  ,TV122 AS "原請購小單位"
  ,TV123 AS "原採購小單位"
  ,TV124 AS "原參考單別"
  ,TV125 AS "原參考單號"
  ,TV126 AS "原參考序號"
  ,TV127 AS "原急料"
  ,TV128 AS "原承認型號"
  ,TV129 AS "原請購包裝數量"
  ,TV130 AS "原採購包裝數量"
  ,TV131 AS "原請購包裝單位"
  ,TV132 AS "原採購包裝單位"
  ,TV133 AS "原採購備註"
  ,TV134 AS "原結案碼"
  ,TV135 AS "原鎖定碼"
  ,TV136 AS "原採購碼"
  ,TV137 AS "原請購備註"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "原類型"
  ,TV141 AS "原專案代號"
  ,TV142 AS "原匯率"
  ,TV143 AS "原本幣金額"
  ,TV144 AS "原預算編號"
  ,TV145 AS "原預算科目"
  ,TV146 AS "原請購單價"
  ,TV147 AS "原請購幣別"
  ,TV148 AS "原請購金額"
  ,TV154 AS "原稅別碼"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "原交易條件"
  ,TV156 AS "原單身多稅率"
  ,TV157 AS "原營業稅率"

FROM PURTV
