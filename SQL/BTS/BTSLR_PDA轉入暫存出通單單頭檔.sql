--BTSLR_PDA轉入暫存出通單單頭檔
SELECT
  ,LR001 AS "工作ID"
  ,LR002 AS "作業種類"
  ,LR003 AS "處理狀態"
  ,LR004 AS "出通單單別"
  ,LR005 AS "出通單單號"
  ,LR006 AS "客戶代號"
  ,LR007 AS "工作日期"
  ,LR008 AS "登入者代號"
  ,LR011 AS "異常碼"

FROM BTSLR
