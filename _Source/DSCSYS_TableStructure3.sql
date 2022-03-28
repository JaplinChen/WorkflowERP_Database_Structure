select TableDB.DB+'.dbo.' as DB,
  rtrim(ltrim(MC.MC001)) as TableID, 
  rtrim(ltrim(MC.MC002)) as TableName, 
  rtrim(ltrim(MC.MC004)) as ModuleID, 
  rtrim(ltrim(MD.MD002)) as sID, 
  rtrim(ltrim(MD.MD003)) as ID, 
  rtrim(ltrim(MD.MD004)) as FieldName, 
  case when LANG1.VIET is NULL then '' else rtrim(ltrim(LANG1.VIET)) end as NameVietnam, 
  MD.MD005 as Type, 
  MD.MD006 as Length, 
  --MD.MD007 as Description,
  case
  -- 去掉不需要的註解： // 和 && 之後的字串
  when charindex('//',MD.MD007)>0 then 
    case when rtrim(ltrim( substring(MD.MD007,1,charindex('//',MD.MD007)-1) )) = rtrim(ltrim(MD.MD004)) then '' 
    else rtrim(ltrim( substring(MD.MD007,1,charindex('//',MD.MD007)-1) )) end
  when charindex('&&',MD.MD007)>0 then 
    case when rtrim(ltrim( substring(MD.MD007,1,charindex('&&',MD.MD007)-1) )) = rtrim(ltrim(MD.MD004)) then '' 
    else rtrim(ltrim( substring(MD.MD007,1,charindex('&&',MD.MD007)-1) )) end
  -- 去掉 註解內容和 FieldName 欄位中文名稱一樣的 字串
  when rtrim(ltrim(MD.MD007)) = rtrim(ltrim(MD.MD004)) then ''
  else rtrim(ltrim(MD.MD007))
  end as Description
from DSCSYS.dbo.ADMMD MD
  left join DSCSYS.dbo.ADMMC MC on MD.MD001 = MC.MC001 
  left join LANGUAGE LANG1 on rtrim(ltrim(LANG1.CHT)) = rtrim(ltrim(MD.MD004)) 
  -- 取得 [Database].[dbo]
  left join (
        SELECT O.name AS TableName,'VPIC1' AS DB
        FROM VPIC1.sys.objects O 
        WHERE (O.type = 'U') AND O.name != 'dtproperties' AND O.name != 'sysdiagrams' AND O.name not LIKE 'TEMP%'  AND O.name not LIKE '%_LOG'
        UNION
        SELECT O.name AS TableName, 'DSCSYS' AS DB
        FROM DSCSYS.sys.objects O 
        WHERE (O.type = 'U') AND O.name != 'dtproperties' AND O.name != 'sysdiagrams' AND O.name not LIKE 'TEMP%'  AND O.name not LIKE '%_LOG'
        AND O.name not in (select name from VPIC1.sys.objects) -- 只要不在 VPIC1 的 Table Name
    )  TableDB on MC.MC001 = TableDB.TableName
WHERE MC.MC004 <> 'PDA'
/* -- 找出 中文亂碼 的 中文欄位名稱 (MD.MD004)
  AND LANG1.VIET is NULL
  AND ( 
    MC.MC004 <> 'EPS'
    and (substring(rtrim(ltrim(MD.MD003)),3,3)>'199' AND substring(rtrim(ltrim(MD.MD003)),3,3)<'500')
    OR CHARINDEX(rtrim(ltrim(MC.MC001)),'ADMXA,CMSXA,INVXA,PURXA,PURXB,PURXC,MTMXA,MTMXB,MTMXC,MTMXD,MOCXA,MOCXB,MOCXC,VPAXA,VPAXB,VPAXC,VPAXD')>0)
*/
ORDER BY MD.MD001, MD.MD003 

