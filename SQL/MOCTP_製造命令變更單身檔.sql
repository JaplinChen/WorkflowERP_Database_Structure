--MOCTP_製造命令變更單身檔
SELECT
  ,TP001 AS "製令單別"
  ,TP002 AS "製令單號"
  ,TP003 AS "變更版次"
  ,TP004 AS "新材料品號"
  ,TP005 AS "新需領用量"
  ,TP006 AS "新已領用量"
  ,TP007 AS "新製程代號"
  ,TP008 AS "新單位"
  ,TP009 AS "新預留欄位"
  ,TP010 AS "新庫別"
  ,TP011 AS "新取替代件"
  ,TP012 AS "新材料型態"
  ,TP013 AS "新材料品名"
  ,TP014 AS "新材料規格"
  ,TP015 AS "新上階主件品號"
  ,TP016 AS "新預計領料"
  ,TP017 AS "新實際領料"
  ,TP018 AS "新備註"
  ,TP019 AS "新確認碼"
  ,TP020 AS "新需領用包裝量"
  ,TP021 AS "新已領用包裝量"
  ,TP022 AS "新包裝單位"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "新類型"
  ,TP024 AS "新被取替代品號"
  ,TP026 AS "新被取替代製程"
  ,CASE 
   WHEN '1' THEN N'製令'
   WHEN '2' THEN N'領退料'
   ELSE ""
   END AS "來源碼"
  ,TP035 AS "新發料DATECODE"
  ,TP036 AS "新發料儲位"
  ,TP037 AS "新回貨DATECODE"
  ,TP038 AS "新回貨批號"
  ,TP039 AS "新刻號管理"
  ,TP040 AS "新刻號/BIN記錄"
  ,TP104 AS "原材料品號"
  ,TP105 AS "原需領用量"
  ,TP106 AS "原已領用量"
  ,TP107 AS "原製程代號"
  ,TP108 AS "原單位"
  ,TP109 AS "原預留欄位"
  ,TP110 AS "原庫別"
  ,TP111 AS "原取替代件"
  ,CASE 
   WHEN '1' THEN N'直接材料'
   WHEN '2' THEN N'間接材料'
   WHEN '3' THEN N'廠商供料'
   WHEN '4' THEN N'不發料'
   WHEN '5' THEN N'客戶供料'
   ELSE ""
   END AS "原材料型態"
  ,TP113 AS "原材料品名"
  ,TP114 AS "原材料規格"
  ,TP115 AS "原上階主件品號"
  ,TP116 AS "原預計領料"
  ,TP117 AS "原實際領料"
  ,TP118 AS "原備註"
  ,TP120 AS "原需領用包裝量"
  ,TP121 AS "原已領用包裝量"
  ,TP122 AS "原包裝單位"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "原類型"
  ,TP124 AS "原被取替代品號"
  ,TP126 AS "原被取替代製程"
  ,CASE 
   WHEN '1' THEN N'製令'
   WHEN '2' THEN N'領退料'
   ELSE ""
   END AS "來源碼"
  ,TP135 AS "原發料DATECODE"
  ,TP136 AS "原發料儲位"
  ,TP137 AS "原回貨DATECODE"
  ,TP138 AS "原回貨批號"
  ,TP139 AS "原刻號管理"
  ,TP140 AS "原刻號/BIN記錄"
  ,TP500 AS "新GROSS_DIE"
  ,TP501 AS "新批號"
  ,TP502 AS "新領料單別"
  ,TP503 AS "新領料單號"
  ,TP504 AS "新領料序號"
  ,TP505 AS "原GROSS_DIE"
  ,TP506 AS "原批號"
  ,TP507 AS "原領料單別"
  ,TP508 AS "原領料單號"
  ,TP509 AS "原領料序號"

FROM MOCTP
