select ADMMC.MC001 as TableID, ADMMC.MC002 as TableName, 
    case when LANG1.VIET is NULL then '' else rtrim(ltrim(LANG1.VIET)) end as TableNameViet, 
    ADMMC.MC004 as ModuleID, ADMMA.MA002 as ModuleName, 
    case ADMMC.MC004 
    when 'VTA' then 'Hệ thống quản lý thuế giá trị gia tăng' 
    else case when LANG2.VIET is NULL then '' else rtrim(ltrim(LANG2.VIET)) end 
    end as ModuleNameViet, 
    ADMMA.MA004 as ModuleType 
from ADMMC 
    left join ADMMA on ADMMA.MA001=ADMMC.MC004 
    left join LANGUAGE LANG1 on rtrim(ltrim(LANG1.CHT)) = rtrim(ltrim(ADMMC.MC002)) 
    left join LANGUAGE LANG2 on rtrim(ltrim(LANG2.CHT)) = rtrim(ltrim(ADMMA.MA002)) 
WHERE ADMMC.MC004 <> 'PDA'
ORDER BY ADMMC.MC004, ADMMC.MC001

--select * from ADMMC
/*
UPDATE ADMMC SET MC002 = 'BOM變更單頭檔' FROM ADMMC WHERE MC001 = 'BOMTP'
UPDATE ADMMC SET MC002 = 'BOM 用量資料單頭檔' FROM ADMMC WHERE MC001 = 'BOMTQ'
UPDATE ADMMC SET MC002 = 'BOM 用量資料單身檔' FROM ADMMC WHERE MC001 = 'BOMTR'
*/
