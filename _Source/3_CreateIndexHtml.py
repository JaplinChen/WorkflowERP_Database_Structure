import json
from pandas.io.json import json_normalize
def jsonToDataFrame(jsonStr):    
     return pd.json_normalize(jsonStr)
import pandas as pd

# -- HTML Strings for index.html
index_string = '''
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<meta name="keywords" content="VPIC1,ERP,Workflow,Structure">
<meta name="Description" contect="VPIC1,ERP,Workflow,Structure">
<meta name="Author" content="VPIC1,Japlin Chen">
<meta charset="utf-8" />
<meta http-equiv="X-Frame-Options" content="SAMEORIGIN">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link rel="stylesheet" href="./df_style.css" />
<title>Workflow ERP Table Structure</title>
</HEAD>
<BODY class="uk-background-muted">
<header>
  <h3>Workflow ERP Table Structure</h3>
</header>
<div class="container">
  <div class="MenuBlock">
    <div class="vertical-menu">
    {MenuList}
    </div>
  </div>
  <div class="FrameBlock">
    <iframe name="myiframe" src="HTML\ADM_管理維護系統.html"></iframe>
  </div>
</div>
<footer>Copyright &copy;2022 VPIC1. All Rights Reserved.  <i>(Japlin Chen)</i></footer>
</BODY>
</HTML>
'''

# -- Begin of Main
index_file = 'index.html'
#MoudleName_Columns = ['ModuleID', 'ModuleName', 'ModuleNameViet', 'ModuleType', 'ModuleClass']
#TableName_Columns = ['TableID', 'TableName', 'TableNameViet', 'ModuleID', 'ModuleName', 'ModuleNameViet', 'ModuleType']

# -- load json file : ModuleName.json
_MoudleName = ''
with open('MoudleName.json', 'r', encoding="utf-8") as f:
    try:
        _MoudleName = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- load json file: TableName.json
_TableName = ''
with open('TableName.json', 'r', encoding="utf-8") as f:
    try:
        _TableName = json.load(f)
    except Exception as e:
        print(e)
    f.close()
# -- json string to dataframe
_ModuleName_df = jsonToDataFrame(_MoudleName)
_ModuleID = [item.get('ModuleID') for item in _MoudleName]
_TableName_df = jsonToDataFrame(_TableName)

# -- 建立 Menu List
MenuList_string = '\n'
unuseList_string = '\n'

# -- 依照 MoudleName.json 排序 --> {MenuList}
last_Module_Class = ''
for x in _ModuleName_df.index:
    # -- 增加 <hr>
    if (_ModuleName_df.loc[x,'ModuleClass'] != last_Module_Class) and (last_Module_Class > ''):
        if ('_' not in (_ModuleName_df.loc[x,'ModuleClass'])):
            MenuList_string = MenuList_string + '<hr class="hr-solid">\n'
    # -- 設定 last_Module_Class
    if (_ModuleName_df.loc[x,'ModuleClass'] != last_Module_Class) or (last_Module_Class == ''):
        last_Module_Class = _ModuleName_df.loc[x,'ModuleClass']
    # -- 取得內容
    Module_ID = _ModuleName_df.loc[x,'ModuleID']
    Module_Name = _ModuleName_df.loc[x,'ModuleName']
    Module_Name_Viet = _ModuleName_df.loc[x,'ModuleNameViet']
    Module_Type = _ModuleName_df.loc[x,'ModuleType']
    Module_Class = _ModuleName_df.loc[x,'ModuleClass']

    HTML_file = Module_ID + '_' + Module_Name +'.html'
    # -- 判斷 ModuleClass 是否有 '_'
    if '_' in (_ModuleName_df.loc[x,'ModuleClass']):
        unuseList_string = unuseList_string + '<a href="HTML\\' + HTML_file + '" target="myiframe" style="color:gray; background-color: #ddd;"><b><small>'+Module_Class.replace('_','')+' <samp>' + Module_ID+ '</samp> ' + Module_Name.replace('系統','')  + '</small></b></a>\n'
    else:
        MenuList_string = MenuList_string + '<a href="HTML\\' + HTML_file + '" target="myiframe"><b><small>'+Module_Class+' <samp>' + Module_ID + '</samp> ' + Module_Name.replace('系統','') + '</small></b></a>\n'

# -- 找出不在 MoudleName.json 的 TableName.json MoudleID 資料 --> {MenuList}
last_Module_ID = ''
for x in _TableName_df.index:

    if (_TableName_df.loc[x,'ModuleID'] != last_Module_ID) or (last_Module_ID == ''):
        # -- 取得內容
        Module_ID = _TableName_df.loc[x,'ModuleID']
        Module_Name = _TableName_df.loc[x,'ModuleName']
        Module_Type = _TableName_df.loc[x,'ModuleType']
        last_Module_ID = Module_ID

        if Module_Name == None:
            Module_Name = ''
        else:
            Module_Name = Module_Name.replace('系統','').strip()
    
        HTML_file = Module_ID + '_' + Module_Name +'.html'
        # -- 判斷 TableName.json 的 MoudleID 是否不在 MoudleName.json 的 MoudleID
        # -- 不存在的話，就加入 unuseList_string
        if (_TableName_df.loc[x,'ModuleID'] not in _ModuleID):
            unuseList_string = unuseList_string + '<a href="HTML\\' + HTML_file + '" target="myiframe" style="color:gray; background-color: #ddd;"><samp>' + Module_ID+ '</samp> ' + Module_Name  + '</a>\n'

# -- Write to the index.html
with open(index_file, 'w', encoding="utf-8", errors='ignore') as m:
    index_data = index_string.format(MenuList=MenuList_string+unuseList_string+'\n')
    m.write(index_data)
    m.close()
