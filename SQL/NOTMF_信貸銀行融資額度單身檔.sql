--NOTMF_信貸銀行融資額度單身檔
SELECT
  ,MF001 AS "信貸銀行"
  ,MF002 AS "幣別"
  ,MF003 AS "融資種類"
  ,MF004 AS "額度"
  ,MF005 AS "已使用額度"
  ,MF006 AS "額度使用限制"
  ,MF012 AS "融資幣別"
  ,MF013 AS "匯率"
  ,MF014 AS "本幣額度"
  ,MF015 AS "本幣已使用額度"
  ,MF016 AS "授信生效日"
  ,MF017 AS "授信到期日"

FROM NOTMF
