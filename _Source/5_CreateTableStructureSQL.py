#-*- coding: utf-8 -*-
# coding: utf-8
# coding: unicode_escape
import os
import re
import json
import pandas as pd
from pandas.io.json import json_normalize
def jsonToDataFrame(jsonStr):    
     return pd.json_normalize(jsonStr)

#TableName_Columns = ['DB','TableID', 'TableName', 'TableNameViet', 'ModuleID', 'ModuleName', 'ModuleType']
#TableStructure_Columns=['DB','TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'field_name', 'NameVietnam', 'Type', 'Length', 'Description']

# -- SQL Strings for Table Structure
table_sql = '''-- {TableName}
-- Column = {FieldColumn}
SELECT 
{FieldString} 
FROM {TableID} 
'''

def Description_Convert_to_SQL_CASE(Description):
    s = str(Description).split('[')[0]
    if s == '':
        return ''
    # int_regex = r'/^[+-]?\d+$/'
    regex = re.compile(r'([+-]?\w)\.|([+-]?\w):')
    replace_string = r"|   WHEN '\1\2' THEN N'"
    f = ''
    m = ''
    n = ''
    if re.match(regex,s):
        f = regex.sub(replace_string,s)
        for x in f.split('|'):
            n = n + x.rstrip() + "'\n"
        m = n[2:]  #--去掉第一個 '\n
        m = m.replace('、','')
        return m
    else:
        return ''

# -- Begin of Main

# -- load json file: TableName.json
_TableName = ''
with open('TableName.json', 'r', encoding="utf-8") as f:
    try:
        _TableName = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- load json file: TableStructure.json
_TableStructure = ''
with open('TableStructure.json', 'r', encoding="utf-8") as f:
    try:
        _TableStructure = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- json string to dataframe
_TableName_df = jsonToDataFrame(_TableName)
_TableStructure_df = jsonToDataFrame(_TableStructure)
# --------------------------------------------------------------------
# -- Table Structure : Ready to build one html file for each class
last_module_id = ''
table_module_id = ''
db_dbo = ''
for x in _TableName_df.index:
    # -- 判斷是否 剛開始
    if (last_module_id) == '':
        # -- 設定 table_module_id & last_module_id
        table_module_id = str(_TableName_df.loc[x]['ModuleID']).strip()
        last_module_id   = table_module_id
    # -- 判斷是否 ModuleID 不同
    if _TableName_df.loc[x]['ModuleID'].strip() != last_module_id:
        # -- 檢查資料夾是否存在, 如果不存在，就建立資料夾
        if not os.path.isdir('SQL'):       
            os.makedirs('SQL', mode=0o777)
        if not os.path.isdir('SQL\\'+table_module_id):
            os.makedirs('SQL\\'+table_module_id, mode=0o777)
        # -- 設定 table_module_id & last_module_id
        table_module_id = str(_TableName_df.loc[x]['ModuleID']).strip()
        last_module_id = table_module_id

    db_dbo =  str(_TableName_df.loc[x]['DB']).strip()
    table_id =  str(_TableName_df.loc[x]['TableID']).strip()
    table_name = table_id +'_'+ str(_TableName_df.loc[x]['TableName']).strip().replace('/','')

    # ----------------------------------------------------------------------------------------------------------------------
    # -- 取得 Table Structure 資料
    # -- 只需要 _TableStructure_df.loc[x]['TableID'] 的資料
    _TableStructure_df1 = _TableStructure_df.loc[ _TableStructure_df['TableID'] == table_id ]
    # -- ['TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'FieldName', 'NameVietnam', 'Type', 'Length', 'Description']
    field_string = ''
    field_name_column = []
    if len(_TableStructure_df1) != 0:
        y = 0
        for y in _TableStructure_df1.index:
            field_id        = str(_TableStructure_df1.loc[y]['ID'])
            field_name  = str(_TableStructure_df1.loc[y]['FieldName'])
            description = str(_TableStructure_df1.loc[y]['Description'])
            description_convert = Description_Convert_to_SQL_CASE(description)
            #print(field_name[0:2])
            #if field_name != '預留欄位' and field_name != '預留'  and field_name[0:2] != '預留':
            if field_name[0:2] != '預留' and field_name[0:2] != '特性'  and field_name[0:4] != '特殊特性'  and field_name[0:4] != '屬性內容'  and field_name[0:4] != '屬性代碼':
                if y == 0:
                    field_string = '   ' + field_id + ' AS "' + field_name  + '"\n'
                else:
                    if  description_convert != '':
                        field_string = field_string + '  ,CASE ' + field_id + '\n' + description_convert + '   ELSE ""\n   END AS "' + field_name + '"\n'
                    else:
                        field_string = field_string + '  ,' + field_id + ' AS "' + field_name + '"\n'
                
                field_name_column.append(field_name)
                
        #print(field_name_column)        
        if field_string.strip()[0:1] == ',':
            field_string = '   ' + field_string[3:]
    
    # -- 檢查資料夾是否存在, 如果不存在，就建立資料夾
    if not os.path.isdir('SQL'):
        os.makedirs('SQL', mode=0o777)
    if not os.path.isdir('SQL\\'+table_module_id):
        os.makedirs('SQL\\'+table_module_id, mode=0o777)

    # OUTPUT AN HTML FILE
    with open('SQL\\'+table_module_id+'\\'+table_name+'.sql', 'w',encoding="utf-8") as f:
        SQL_String = table_sql.format(
            FieldColumn = str(field_name_column),
            FieldString = field_string,
            TableName = table_name,
            TableID = db_dbo+'.'+table_id
            )
        f.write(SQL_String)
        f.close()


