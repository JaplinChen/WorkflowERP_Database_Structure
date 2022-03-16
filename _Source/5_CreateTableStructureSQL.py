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

#TableName_Columns = ['TableID', 'TableName', 'TableNameViet', 'ModuleID', 'ModuleName', 'ModuleType']
#TableStructure_Columns=['TableID', 'TableName', 'ModuleID', 'sID', 'ID', '_FieldName', 'NameVietnam', 'Type', 'Length', 'Description']

# -- SQL Strings for Table Structure
TableSQL = '''--{TableName}
SELECT
{FieldString}
FROM {TableID}
'''

def Description_Convert(Description):
    s = str(Description).split('[')[0]
    if s == '':
        return ''
    # int_regex = r'/^[+-]?\d+$/'
    regex = re.compile(r'([+-]?\w)\.|([+-]?\w):')
    replaceString = r"|   WHEN '\1\2' THEN N'"
    f = ''
    m = ''
    n = ''
    if re.match(regex,s):
        f = regex.sub(replaceString,s)
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
last_Module_ID = ''
Table_ModuleID = ''
for x in _TableName_df.index:

    if (last_Module_ID) == '':
            # -- 設定 Table_ModuleID & last_Module_ID
            Table_ModuleID = str(_TableName_df.loc[x]['ModuleID']).strip()
            last_Module_ID = Table_ModuleID

    if _TableName_df.loc[x]['ModuleID'].strip() != last_Module_ID:
        if not os.path.isdir('SQL'):       # -- 檢查資料夾是否存在
            os.makedirs('SQL', mode=0o777)     # -- 如果不存在，就建立資料夾
        if not os.path.isdir('SQL\\'+Table_ModuleID):       # -- 檢查資料夾是否存在
            os.makedirs('SQL\\'+Table_ModuleID, mode=0o777)     # -- 如果不存在，就建立資料夾
        Table_ModuleID = _TableName_df.loc[x]['ModuleID'].strip()
        last_Module_ID = Table_ModuleID

    _TableID =  str(_TableName_df.loc[x]['TableID']).strip()
    TableName = _TableID +'_'+ str(_TableName_df.loc[x]['TableName']).strip().replace('/','')

    # ----------------------------------------------------------------------------------------------------------------------
    # -- 取得 Table Structure 資料
    # -- 只需要 _TableStructure_df.loc[x]['TableID'] 的資料
    _TableStructure_df1 = _TableStructure_df.loc[ _TableStructure_df['TableID'] == _TableID ]
    # -- ['TableID', 'TableName', 'ModuleID', 'sID', 'ID', 'FieldName', 'NameVietnam', 'Type', 'Length', 'Description']
    FieldString = ''
    if len(_TableStructure_df1) != 0:
        for y in _TableStructure_df1.index:
            _FieldID        = str(_TableStructure_df1.loc[y]['ID'])
            _FieldName  = str(_TableStructure_df1.loc[y]['FieldName'])
            _Description = str(_TableStructure_df1.loc[y]['Description'])
            _DescriptionConvert = Description_Convert(_Description)
            if y == 0:
                FieldString = FieldString + ' ' + _FieldID + ' AS ' + _FieldName
            else:
                if  _DescriptionConvert != '':
                    FieldString = FieldString + '  ,CASE \n' + _DescriptionConvert + '   ELSE ""\n   END AS "' + _FieldName + '"\n'
                else:
                    if _FieldName != '預留欄位' and _FieldName != '預留':
                        FieldString = FieldString + '  ,' + _FieldID + ' AS "' + _FieldName + '"\n'

    if not os.path.isdir('SQL'):       # -- 檢查資料夾是否存在
        os.makedirs('SQL', mode=0o777)      # -- 如果不存在，就建立資料夾
    if not os.path.isdir('SQL\\'+Table_ModuleID):       # -- 檢查資料夾是否存在
        os.makedirs('SQL\\'+Table_ModuleID, mode=0o777)     # -- 如果不存在，就建立資料夾

    # OUTPUT AN HTML FILE
    with open('SQL\\'+Table_ModuleID+'\\'+TableName+'.sql', 'w',encoding="utf-8") as f:
        SQLString = TableSQL.format(
            FieldString=FieldString,
            TableName=TableName,
            TableID=_TableID
            )
        f.write(SQLString)
        f.close()


