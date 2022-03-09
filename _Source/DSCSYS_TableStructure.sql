select ADMMC.MC001 as TableID, ADMMC.MC002 as TableName, ADMMC.MC004 as ModuleID, 
  ADMMD.MD002 as sID, ADMMD.MD003 as ID, ADMMD.MD004 as FieldName, 
  case when LANG1.VIET is NULL then '' else rtrim(ltrim(LANG1.VIET)) end as NameVietnam, 
  ADMMD.MD005 as Type, 
  ADMMD.MD006 as Length, ADMMD.MD007 as Description 
from ADMMD 
  left join ADMMC on ADMMD.MD001 = ADMMC.MC001 
  left join LANGUAGE LANG1 on rtrim(ltrim(LANG1.CHT)) = rtrim(ltrim(ADMMD.MD004)) 
WHERE ADMMC.MC004 <> 'PDA'
ORDER BY ADMMD.MD001, ADMMD.MD003 