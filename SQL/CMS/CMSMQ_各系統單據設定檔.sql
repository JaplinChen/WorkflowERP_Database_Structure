--CMSMQ_各系統單據設定檔
SELECT
  ,MQ001 AS "單別"
  ,MQ002 AS "單據名稱"
  ,CASE 
   WHEN '1' THEN N'庫存'
   WHEN '2' THEN N'訂單'
   WHEN '3' THEN N'採購'
   WHEN '4' THEN N'BOM'
   WHEN '5' THEN N'製令'
   WHEN '6' THEN N'應收'
   WHEN '7' THEN N'應付'
   WHEN '8' THEN N'票據'
   WHEN '9' THEN N'會計'
   WHEN 'A' THEN N'進口'
   WHEN 'B' THEN N'出口'
   WHEN 'C' THEN N'固定資產'
   WHEN 'D' THEN N'製程'
   WHEN 'E' THEN N'維修'
   WHEN 'F' THEN N'模具G?：保稅'
   WHEN 'H' THEN N'軍福品'
   WHEN 'I' THEN N'零用金'
   WHEN 'J' THEN N'人力資源'
   WHEN 'K' THEN N'海關合同'
   WHEN 'L' THEN N'IDL'
   WHEN 'M' THEN N'會計調整帳'
   ELSE ""
   END AS "單據性質"
  ,CASE 
   WHEN '1' THEN N'日編'
   WHEN '2' THEN N'月編'
   WHEN '3' THEN N'流水號'
   WHEN '4' THEN N'手動編號'
   ELSE ""
   END AS "編碼方式"
  ,MQ005 AS "年碼數"
  ,MQ006 AS "流水號碼數"
  ,MQ007 AS "使用順序碼"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   ELSE ""
   END AS "異動類別"
  ,MQ009 AS "對方科目代號"
  ,CASE 
   WHEN '1' THEN N'增'
   WHEN '-1' THEN N'減'
   ELSE ""
   END AS "庫存影響"
  ,CASE 
   WHEN 'Y' THEN N'成本計算來源'
   WHEN 'N' THEN N'賦予計算結果'
   WHEN 'y' THEN N'成本調整'
   ELSE ""
   END AS "影響成本"
  ,MQ012 AS "更新入庫日"
  ,MQ013 AS "更新出庫日"
  ,MQ014 AS "更新盤點日"
  ,MQ015 AS "自動確認"
  ,MQ016 AS "自動列印"
  ,MQ017 AS "自動產生發票號碼"
  ,MQ018 AS "更新核價/金額允許輸入負數"
  ,MQ019 AS "核對採購/製令/訂單/託工"
  ,MQ020 AS "直接結帳"
  ,MQ021 AS "結帳單別"
  ,MQ022 AS "備註"
  ,MQ023 AS "公司代號"
  ,CASE 
   WHEN '1' THEN N'採品號輸入'
   WHEN '2' THEN N'採條碼輸入'
   ELSE ""
   END AS "品號輸入方式"
  ,MQ025 AS "註記代號"
  ,MQ026 AS "列印時修改註記"
  ,MQ027 AS "簽核代號"
  ,MQ028 AS "列印時修改簽核"
  ,MQ029 AS "單別限定輸入使用者"
  ,MQ030 AS "每頁列印註記"
  ,MQ031 AS "每頁列印簽核"
  ,MQ032 AS "憑證格式"
  ,MQ033 AS "列印時選擇憑證格式"
  ,MQ034 AS "單據全名"
  ,MQ035 AS "每頁列印合計"
  ,MQ036 AS "發票限額"
  ,MQ037 AS "發票限定金額"
  ,MQ038 AS "售價管制"
  ,MQ039 AS "售價來源"
  ,MQ040 AS "使用未生效己失效品號"
  ,MQ041 AS "領料單別"
  ,MQ042 AS "退料單別"
  ,MQ043 AS "單據輸入工程品號"
  ,CASE 
   WHEN 'I' THEN N'銀行買進匯率'
   WHEN 'O' THEN N'銀行賣出匯率'
   WHEN 'E' THEN N'報關買進匯率'
   WHEN 'W' THEN N'報關賣出匯率'
   ELSE ""
   END AS "匯率來源"
  ,MQ045 AS "分批採購"
  ,MQ047 AS "預算管理"
  ,MQ048 AS "預算編號"
  ,MQ049 AS "發票列印品項數"
  ,MQ051 AS "PACKINGLIST"
  ,MQ054 AS "控制超領"
  ,MQ055 AS "控制缺領"
  ,MQ056 AS "控制超入"
  ,MQ057 AS "部門管理"
  ,MQ059 AS "變更單註記代號"
  ,MQ060 AS "列印時修改變更單註記"
  ,MQ061 AS "變更單簽核代號"
  ,MQ062 AS "列印時修改變更單簽核"
  ,MQ063 AS "每頁列印變更單註記"
  ,MQ064 AS "每頁列印變更單簽核"
  ,MQ065 AS "變更單憑證格式"
  ,MQ066 AS "列印時選擇變更單憑證格式"
  ,CASE 
   WHEN '1' THEN N'依結帳明細'
   WHEN '2' THEN N'依銷貨明細(品號不彙總)'
   WHEN '3' THEN N'依銷貨明細(品號彙總)'
   ELSE ""
   END AS "發票號碼產生方式"
  ,MQ068 AS "事務性進貨"
  ,MQ069 AS "新增狀態畫面保留"
  ,CASE 
   WHEN '1' THEN N'國內發票'
   WHEN '2' THEN N'國外發票'
   ELSE ""
   END AS "發票格式"
  ,MQ500 AS "直接領料"
  ,MQ501 AS "領料單別"
  ,MQ502 AS "預計產量由單身需領用量累加"

FROM CMSMQ
