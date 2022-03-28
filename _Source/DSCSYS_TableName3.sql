select TableDB.DB+'.dbo.' as DB,
    rtrim(ltrim(MC.MC001)) as TableID, 
    rtrim(ltrim(MC.MC002)) as TableName, 
    case when LANG1.VIET is NULL then '' else rtrim(ltrim(LANG1.VIET)) end as TableNameViet, 
    rtrim(ltrim(MC.MC004)) as ModuleID, 
    rtrim(ltrim(MA.MA002)) as ModuleName, 
    case MC.MC004 
      when 'VTA' then 'Hệ thống quản lý thuế giá trị gia tăng' 
      else case when LANG2.VIET is NULL then '' else rtrim(ltrim(LANG2.VIET)) end 
      end as ModuleNameViet, 
    MA.MA004 as ModuleType 
from DSCSYS.dbo.ADMMC MC
    left join DSCSYS.dbo.ADMMA MA on MA.MA001=MC.MC004 
    left join DSCSYS.dbo.LANGUAGE LANG1 on rtrim(ltrim(LANG1.CHT)) = rtrim(ltrim(MC.MC002)) 
    left join DSCSYS.dbo.LANGUAGE LANG2 on rtrim(ltrim(LANG2.CHT)) = rtrim(ltrim(MA.MA002)) 
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
ORDER BY MC.MC004, MC.MC001

--select * from ADMMC
/*
UPDATE ADMMC SET MC002 = 'BOM變更單頭檔' FROM ADMMC WHERE MC001 = 'BOMTP'
UPDATE ADMMC SET MC002 = 'BOM 用量資料單頭檔' FROM ADMMC WHERE MC001 = 'BOMTQ'
UPDATE ADMMC SET MC002 = 'BOM 用量資料單身檔' FROM ADMMC WHERE MC001 = 'BOMTR'
*/
