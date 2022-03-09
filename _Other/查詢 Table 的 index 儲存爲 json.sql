SELECT DISTINCT 
 TableName = O.name, 
 IndexName = IDX.name, 
 IndexColumnName = stuff( 
     (  SELECT '+' + C1.name 
        FROM sys.indexes AS IDX1 
        INNER JOIN sys.index_columns as IDXC2 ON IDX1.[object_id] = IDXC2.[object_id] AND IDX1.index_id = IDXC2.index_id 
        INNER JOIN sys.objects as O1 ON O1.[object_id] = IDX1.[object_id] AND O1.type='U' AND O1.is_ms_shipped=0 
        INNER JOIN sys.columns as C1 ON O1.[object_id] = C1.[object_id] AND IDXC2.column_id = C1.column_id AND O1.type='U' AND O1.is_ms_shipped=0 
            AND C1.name != 'E_FROM' AND C1.name != 'E_DATE' AND C1.name != 'E_TIME' AND C1.name != 'T_COMP'
        WHERE IDX1.name = IDX.name 
        FOR xml path('')), 1, 1, ''), 
 isPrimaryKey = IDX.is_primary_key 
FROM sys.indexes IDX 
INNER JOIN sys.index_columns as IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id 
INNER JOIN sys.objects O ON O.[object_id] = IDX.[object_id] AND O.type = 'U' AND O.is_ms_shipped=0
INNER JOIN sys.columns as C ON O.[object_id] = C.[object_id] AND IDXC.column_id = C.column_id AND O.type='U' AND O.is_ms_shipped=0 
            AND C.name != 'E_FROM' AND C.name != 'E_DATE' AND C.name != 'E_TIME' AND C.name != 'T_COMP'
--WHERE O.name='ACPTA' 
ORDER BY O.name, IDX.is_primary_key DESC, IDX.name 
