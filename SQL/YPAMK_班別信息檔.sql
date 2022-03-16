--YPAMK_班別信息檔
SELECT
  ,MK001 AS "班別編號"
  ,MK002 AS "班別名稱"
  ,MK003 AS "正常上班時間起(時:分)"
  ,MK004 AS "正常下班時間止(時:分)"
  ,MK005 AS "半天上班時間起(時:分)"
  ,MK006 AS "半天下班時間止(時:分)"
  ,MK007 AS "正常加班上班時間起(時:分)"
  ,MK008 AS "半天加班時間起(時:分)"
  ,MK009 AS "正常休息時間起(時:分)"
  ,MK010 AS "正常休息時間止(時:分)"
  ,MK011 AS "半天工作時分(時:分)"
  ,MK012 AS "正常工作時分(時:分)"
  ,MK013 AS "日薪者基本工資倍數"
  ,MK014 AS "@遲到N分鐘不計次"
  ,MK015 AS "刷卡幾分鐘內重複無效"
  ,MK016 AS "遲到>N分鐘須請假"
  ,MK017 AS "早退>N分鐘須請假"
  ,MK018 AS "OT>=N分鐘給OT費"
  ,MK019 AS "休息時間須刷卡"
  ,MK020 AS "加班時數最多幾小時"
  ,MK021 AS "加班未刷卡須計加班"
  ,MK022 AS "跨夜"
  ,MK023 AS "正常休息時分(時:分)"
  ,MK024 AS "總遲到N分鐘不計"
  ,MK025 AS "加班時數-1類"
  ,MK026 AS "加班時數-2類"
  ,MK027 AS "當日刷卡區間認定起"
  ,MK028 AS "當日刷卡區間認定起始時間"
  ,MK029 AS "當日刷卡區間認定止"
  ,MK030 AS "當日刷卡區間認定截止時間"
  ,MK031 AS "上班允許刷卡時間起"
  ,MK032 AS "上班允許刷卡時間起始時間"
  ,MK033 AS "上班允許刷卡時間止"
  ,MK034 AS "上班允許刷卡時間截止時間"
  ,MK035 AS "休息開始允許刷卡時間起"
  ,MK036 AS "休息開始允許刷卡時間起始時間"
  ,MK037 AS "休息開始允許刷卡時間止"
  ,MK038 AS "休息開始允許刷卡時間截止時間"
  ,MK039 AS "休息退出允許刷卡時間起"
  ,MK040 AS "休息退出允許刷卡時間起始時間"
  ,MK041 AS "休息退出允許刷卡時間止"
  ,MK042 AS "休息退出允許刷卡時間截止時間"
  ,MK043 AS "下班允許刷卡時間起"
  ,MK044 AS "下班允許刷卡時間起始時間"
  ,MK045 AS "下班允許刷卡時間止"
  ,MK046 AS "下班允許刷卡時間截止時間"
  ,MK047 AS "加班上班允許刷卡時間起"
  ,MK048 AS "加班上班允許刷卡時間起始時間"
  ,MK049 AS "加班上班允許刷卡時間止"
  ,MK050 AS "加班上班允許刷卡時間截止時間"
  ,MK051 AS "加班下班允許刷卡時間起"
  ,MK052 AS "加班下班允許刷卡時間起始時間"
  ,MK053 AS "加班下班允許刷卡時間止"
  ,MK054 AS "加班下班允許刷卡時間截止時間"
  ,MK055 AS "假日加班扣除休息時間"
  ,MK056 AS "彈性上班"

FROM YPAMK
