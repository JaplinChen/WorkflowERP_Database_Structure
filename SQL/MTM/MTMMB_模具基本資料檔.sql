--MTMMB_模具基本資料檔
SELECT
  ,MB001 AS "模具編號"
  ,MB002 AS "中文名稱"
  ,MB003 AS "英文名稱"
  ,MB004 AS "一模幾穴"
  ,MB005 AS "模具材質"
  ,MB006 AS "圖號"
  ,MB007 AS "客戶代號"
  ,MB008 AS "模具存放處"
  ,MB009 AS "代工廠商"
  ,MB010 AS "製造廠商"
  ,MB011 AS "銷帳日期"
  ,MB012 AS "新模入庫日"
  ,MB013 AS "試模完成日"
  ,MB014 AS "新模金額"
  ,MB015 AS "修模金額"
  ,MB016 AS "保證模數"
  ,MB017 AS "模具長"
  ,MB018 AS "模具寬"
  ,MB019 AS "模具高"
  ,MB020 AS "適用機台噸數"
  ,MB021 AS "成品重量"
  ,MB022 AS "備註"
  ,MB023 AS "[模具名稱1]"
  ,MB024 AS "[模具名稱2]"
  ,MB025 AS "[模具名稱3]"
  ,MB026 AS "[模具名稱4]"
  ,MB027 AS "[模具名稱5]"
  ,MB028 AS "[模具名稱6]"
  ,MB029 AS "[模具名稱7]"
  ,MB030 AS "[模具名稱8]"
  ,MB031 AS "[模具名稱9]"
  ,MB032 AS "[模具名稱10]"
  ,MB033 AS "[模具名稱11]"
  ,MB034 AS "[模具名稱12]"
  ,MB035 AS "[模具名稱13]"
  ,MB036 AS "[模具名稱14]"
  ,MB037 AS "[模具名稱15]"
  ,MB038 AS "[模具名稱16]"
  ,MB039 AS "[模具名稱17]"
  ,MB040 AS "[模具名稱18]"
  ,MB041 AS "[模具名稱19]"
  ,MB042 AS "[模具名稱20]"
  ,MB043 AS "[模具名稱21]"
  ,MB044 AS "[模具名稱22]"
  ,MB045 AS "[模具名稱23]"
  ,MB046 AS "[模具名稱24]"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,MB048 AS "建立日期"
  ,MB049 AS "確認日期"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態"
  ,MB051 AS "確認者"
  ,MB057 AS "模具描述"
  ,MB058 AS "模具大類編號"
  ,CASE 
   WHEN '0' THEN N'保修中'
   WHEN '1' THEN N'閒置'
   WHEN '2' THEN N'使用中'
   WHEN '3' THEN N'報廢'
   WHEN '4' THEN N'故障'
   WHEN '5' THEN N'新模採購'
   WHEN '6' THEN N'出售'
   ELSE ""
   END AS "狀態"
  ,MB060 AS "上次維護人員"
  ,MB061 AS "上次異動日期"
  ,MB062 AS "累計使用次數"
  ,MB063 AS "累計使用時間"
  ,MB064 AS "累計生產數量"
  ,MB065 AS "前次維修日期"
  ,MB066 AS "累計維修次數"
  ,MB067 AS "生效日期"
  ,MB068 AS "失效日期"
  ,MB069 AS "可使用次數"
  ,MB070 AS "維修標準次數"
  ,CASE 
   WHEN '0' THEN N'廠內'
   WHEN '1' THEN N'客戶'
   WHEN '2' THEN N'廠商'
   ELSE ""
   END AS "模具歸屬"
  ,MB072 AS "共模"
  ,MB073 AS "版次"
  ,MB074 AS "總使用次數"
  ,MB200 AS "工具類別"
  ,MB201 AS "«O¾i¶g´Á"
  ,MB202 AS "¤U¦¸«O¾i¤é´Á"
  ,MB203 AS "³Ì«á«O¾i¤é´Á"
  ,MB204 AS "«OºÞ³¡ªù"
  ,MB205 AS "«OºÞ¤H­û"

FROM MTMMB
